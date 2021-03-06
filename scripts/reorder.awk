# This AWK script extracts typescripts comments from lsp-messages.ads
# and reorders them in an order that corresponds to LSP specification.
# Use the following command to run the script:
#
#sed -n -e '/^   --```typescript/,/^   --```/p' \
# ../source/protocol/lsp-messages.ads | awk -f reorder.awk
BEGIN{Span_Index=0}
/--```typescript/{Line_Index=0}
!/--```/{ARR[Span_Index][Line_Index++]=$0}
/--```$/{Span_Index++;Line_Index=0}
END{
    M=0
    Map[M++]=0
    Map[M++]=1
    Map[M++]=2
    Map[M++]=3
    Map[M++]=4
    Map[M++]=59
    Map[M++]=5
    Map[M++]=6
    Map[M++]=7
    Map[M++]=8
    Map[M++]=9
    Map[M++]=10
    Map[M++]=13
    Map[M++]=11
    Map[M++]=12
    Map[M++]=14
    Map[M++]=15
    Map[M++]=18
    Map[M++]=19
    Map[M++]=20
    Map[M++]=26
    Map[M++]=16
    Map[M++]=21
    Map[M++]=17
    Map[M++]=22
    Map[M++]=23
    Map[M++]=24
    Map[M++]=25
    Map[M++]=70
    Map[M++]=69
    Map[M++]=31
    Map[M++]=157
    Map[M++]=158
    Map[M++]=159
    Map[M++]=56
    Map[M++]=61
    Map[M++]=64
    Map[M++]=62
    Map[M++]=63
    Map[M++]=55
    Map[M++]=57
    Map[M++]=105
    Map[M++]=107
    Map[M++]=108
    Map[M++]=104
    Map[M++]=106
    Map[M++]=110
    Map[M++]=109
    Map[M++]=111
    Map[M++]=112
    Map[M++]=113
    Map[M++]=60
    Map[M++]=180
    Map[M++]=125
    Map[M++]=126
    Map[M++]=101
    Map[M++]=58
    Map[M++]=160
    Map[M++]=27
    Map[M++]=127
    Map[M++]=161
    Map[M++]=28
    Map[M++]=122
    Map[M++]=134
    Map[M++]=133
    Map[M++]=29
    Map[M++]=99
    Map[M++]=100
    Map[M++]=144
    Map[M++]=30
    Map[M++]=98
    Map[M++]=121
    Map[M++]=154
    Map[M++]=155
    Map[M++]=156
    Map[M++]=65
    Map[M++]=128
    Map[M++]=114
    Map[M++]=129
    Map[M++]=130
    Map[M++]=32
    Map[M++]=115
    Map[M++]=131
    Map[M++]=132
    Map[M++]=33
    Map[M++]=52
    Map[M++]=135
    Map[M++]=34
    Map[M++]=66
    Map[M++]=116
    Map[M++]=162
    Map[M++]=136
    Map[M++]=35
    Map[M++]=67
    Map[M++]=170
    Map[M++]=171
    Map[M++]=138
    Map[M++]=137
    Map[M++]=36
    Map[M++]=68
    Map[M++]=117
    Map[M++]=172
    Map[M++]=139
    Map[M++]=38
    Map[M++]=71
    Map[M++]=72
    Map[M++]=173
    Map[M++]=39
    Map[M++]=73
    Map[M++]=74
    Map[M++]=174
    Map[M++]=40
    Map[M++]=75
    Map[M++]=76
    Map[M++]=175
    Map[M++]=41
    Map[M++]=77
    Map[M++]=78
    Map[M++]=176
    Map[M++]=42
    Map[M++]=79
    Map[M++]=80
    Map[M++]=140
    Map[M++]=43
    Map[M++]=81
    Map[M++]=82
    Map[M++]=177
    Map[M++]=141
    Map[M++]=37
    Map[M++]=83
    Map[M++]=84
    Map[M++]=142
    Map[M++]=143
    Map[M++]=44
    Map[M++]=85
    Map[M++]=123
    Map[M++]=145
    Map[M++]=163
    Map[M++]=45
    Map[M++]=86
    Map[M++]=118
    Map[M++]=146
    Map[M++]=147
    Map[M++]=46
    Map[M++]=95
    Map[M++]=119
    Map[M++]=148
    Map[M++]=149
    Map[M++]=47
    Map[M++]=87
    Map[M++]=88
    Map[M++]=169
    Map[M++]=164
    Map[M++]=165
    Map[M++]=166
    Map[M++]=48
    Map[M++]=89
    Map[M++]=90
    Map[M++]=150
    Map[M++]=49
    Map[M++]=91
    Map[M++]=92
    Map[M++]=151
    Map[M++]=50
    Map[M++]=93
    Map[M++]=120
    Map[M++]=152
    Map[M++]=51
    Map[M++]=94
    Map[M++]=124
    Map[M++]=153
    Map[M++]=181
    Map[M++]=53
    Map[M++]=96
    Map[M++]=97
    Map[M++]=167
    Map[M++]=168
    Map[M++]=54
    Map[M++]=102
    Map[M++]=103
    Map[M++]=178
    Map[M++]=179
    
    for(J in Map) {
        print "   --```typescript"#, J, Map[J]
        for (K in ARR[Map[J]]) print ARR[Map[J]][K]
        print "   --```"
    }
}
