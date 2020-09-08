unit class Acme::OwO;

my constant @prefixes = [
    '<3 ',
    '0w0 ',
    'H-hewwo?? ',
    'HIIII! ',
    'Haiiii! ',
    'Huohhhh. ',
    'OWO ',
    'OwO ',
    'UwU '
];

my constant @suffixes = [
    ' ( ͡° ᴥ ͡°)',
    ' (இωஇ )',
    ' (๑•́ ₃ •̀๑)',
    ' (• o •)',
    ' (●´ω｀●)',
    ' (◠‿◠✿)',
    ' (✿ ♡‿♡)',
    ' (　\'◟ \')',
    ' (人◕ω◕)',
    ' (；ω；)',
    ' (｀へ´)',
    ' ._.',
    ' :3',
    ' :D',
    ' :P',
    ' ;-;',
    ' ;3',
    ' ;_;',
    ' >_<',
    ' >_>',
    ' UwU',
    ' XDDD',
    ' ^-^',
    ' ^_^',
    ' x3',
    ' x3',
    ' xD',
    ' ÙωÙ',
    ' ʕʘ‿ʘʔ',
    ' ʕ•̫͡•ʔ',
    ' ㅇㅅㅇ',
    ', fwendo',
    '（＾ｖ＾）',
];

my constant %substitutions =
    'r' => 'w',
    'l' => 'w',
    'R' => 'W',
    'L' => 'W',
    'no' => 'nu',
    'has' => 'haz',
    'have' => 'haz',
    'you' => 'uu',
    'the ' => 'da ',
    'The ' => 'Da ',
;

method !add-affixes($str) {
    @prefixes.pick ~ $str ~ @suffixes.pick;
}

method !substitute($str is copy) {
    do for %substitutions.kv -> $k, $v { $str ~~ s:g/$k/$v/ };
    return $str;
}

method owo($str) {
    self!add-affixes(self!substitute($str));
}
