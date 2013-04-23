<TeXmacs|1.0.7.19>

<style|generic>

<\body>
  <doc-data|<doc-title|Homework 8>|<doc-author|<author-data|<author-name|Silao_xu
  and Tc28>>>>

  <subsection|Problem 2 (write-up)>

  <\enumerate-numeric>
    <item>The constraints for every point should be

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|-Z<rsub|i>\<leqslant\>p
      x<rsub|i>+q-y<rsub|i>\<leqslant\>Z<rsub|i>,Z<rsub|i>\<geqslant\>0>|<cell|<htab|5mm><around*|(|1|)>>>>>
    </eqnarray*>

    (1) could be expanded into two related constraints for each point
    <math|<around*|(|x<rsub|i>,y<rsub|i>|)>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|p x<rsub|i>+q-y<rsub|i>>|<cell|\<leqslant\>>|<cell|Z<rsub|i><htab|5mm><around*|(|2|)>>>|<row|<cell|-p
      x<rsub|i>-q+y<rsub|i>>|<cell|\<leqslant\>>|<cell|Z<rsub|i>>>>>
    </eqnarray*>

    Extracting the variables <math|x<rsub|i>,y<rsub|i>,Z<rsub|i>>, our
    constraint inequality functions (2) become

    <\eqnarray*>
      <tformat|<table|<row|<cell|p x<rsub|i>+q-Z<rsub|i>>|<cell|\<leqslant\>>|<cell|y<rsub|i><htab|5mm><around*|(|3|)>>>|<row|<cell|-p
      x<rsub|i>-q-Z<rsub|i>>|<cell|\<leqslant\>>|<cell|-y<rsub|i>>>>>
    </eqnarray*>

    Our objective is to minimize <math|<big|sum><rsub|i=1><rsup|n><around*|\||p
    x<rsub|i>+q-y<rsub|i>|\|>> and taking the variables <math|p> and <math|q>
    into account, the objective function could be interpretted as follows:

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|0p+0q+<big|sum><rsub|i=1><rsup|n>Z<rsub|i>>|<cell|<htab|5mm><around*|(|4|)>>>>>
    </eqnarray*>

    <item>The constraints for every point should be

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|-Z\<leqslant\>p
      x<rsub|i>+q-y<rsub|i>\<leqslant\>Z,Z\<geqslant\>0>|<cell|<htab|5mm><around*|(|5|)>>>>>
    </eqnarray*>

    And now the <math|Z> is the overall constraint for every point, the
    constraints inequality function could be represented as follows:

    <\eqnarray*>
      <tformat|<table|<row|<cell|p x<rsub|i>+q-Z>|<cell|\<leqslant\>>|<cell|y<rsub|i><htab|5mm><around*|(|6|)>>>|<row|<cell|-p
      x<rsub|i>-q-Z>|<cell|\<leqslant\>>|<cell|-y<rsub|i>>>>>
    </eqnarray*>

    Our objective is to minimize <math|<text|max><rsub|i><around*|\||p
    x<rsub|i>+q-y<rsub|i>|\|>> and taking the variables <math|p> and <math|q>
    into account, the objective function could be interpretted as follows:

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|0p+0q+Z>|<cell|<htab|5mm><around*|(|7|)>>>>>
    </eqnarray*>

    <item>In Figure 1, we plot 10 points in the coordinates and arbitrarily
    setting the first point be the outlier. The legend is that gray line
    represents the built-in least-squares regression routine
    <with|font|stix|polyfit>; red line represents our
    <with|font|stix|L1Regression> and green line denotes
    <with|font|stix|L1MaxRegression>.

    From the image, we know that the built-in least squares regression
    <with|font|stix|polyfit> looks <em|worse> than L1Regression but still
    better than L1MaxRegression.

    <big-figure|<image|<tuple|<#89504E470D0A1A0A0000000D4948445200000231000001A408020000004F4EE3CE000000097048597300000D1200000D1201B58037740000000774494D4507DD041612332D4C90458900000022744558744372656174696F6E2054696D650032322D4170722D323031332031343A35313A34358F4416A60000002474455874536F667477617265004D41544C41422C20546865204D617468576F726B732C20496E632E3C58DD1800000E7B49444154789CEDDDDD76DAC8168551E98C3C58FAC9E337D3B9504214B031E877D5AE392F7A603AC9A880D95F54C8629CA669008000FFBB7A0100F09B26019042930048A14900A4D024005268120029340980149A04400A4D02208526019042930048A14900A4D024005268120029340980149A04400A4D02208526019042930048A14900A4D024005268120029340980149A04400A4D02208526019042930048A14900A4D02400526812002934098014959B348EE3D54B00E00D959B04405B340980149A04400A4D02208526019042930048A14900A4D024005268120029340980149A04400A4D0220852601904293004851B3497F3EA4625ADC0620DD384DD3D56B38C42D4545FF7E0005D53E4EBABF0D40B29A4D5A1E1B394E026845CD268DE3EF144D93E3248066D46CD29F63A371709C04D08E9A4D02A0459A04400A4D02208526019042930048A14900A4D024005268120029340980149A04400A4D02208526019042930048A14900A4D0240052FCB87A01FF18C7715A7CDED1B8F83CBEF9FEDB3DB75FF6780F008D0A6AD2F8D927C2DE256A99A2699A1EEF39619D001C2468EF4E51003A17D4A44F8DE3F8E9F11300F504EDDD3DDABE2FF7F88E1400B1A29BB49D0E01342477EFCE961D406F728F93E6D3EA6EB75FBC078076553E7FDAD9E1006DC9DDBB03A0379A04400A4D02208526019042930048A14900A4D024005268120029340980149A04400A4D02208526019042930048A14900A4D024005268120029340980149A04400A4D02208526019042930048A14900A4D024005268120029340980149A04400A4D02208526019042930048A14900A4D024005268120029340980149A04400A4D02208526019042930048A14900A4D024005268120029340980149A04400A4D02208526019042930048A14900A4D024005268120029340980149A04400A4D02208526019042930048A14900A4D024005268120029340980149A04408A1F572FE01FE3384ED3B4FC72BE71BBF3957B00685450936E75B97DB90CCF344DAFDC73E68201D857D0DE9DA200742EA84900742E68EFEE08CBFD40C76100E18A374987001A62EF0E8014B9C749F36975B7DB2FDE0340BB2A9F3FEDEC7080B6D8BB03208526019042930048A14900A4D0240052946E9273EE009A52BA49E3300EE3388CDFFF4A0002E4FECCEC2EA6611AE636FDB90D40ACE24D9A29134013BA68D24C9900C275D4A4993201C4EAAE4933650208D4699366CA0410A5EB26CD9409208426FDA64C0097D3A47F2813C08534E913CA0470094DFA9232019C4C93BEA14C00A7297D0DD6FD4CC3340D93CBB9021C4A93DE30674999000E62EFEE3DB6F2008EA3496B2813C01134693D6502D897266DA54C007BD1A47D2813C0769AB4276502D84293F6A74C00EB68D2519409E05D9A742C6502789D269D4199005EA149E7512680E734E96CCA04F015D760BD860B8D033CD2A42BB9D038C092BDBB8BD9CA03B8D1A408CA043068521465023AA749719409E89626855226A0439A144D9980AE6852039409E8842635439980F234A931CA0414A6494D5226A0244D6A983201C56852F3940928C335588B70A171A0004D2AC585C681A6D9BBABC6561ED02E4DAA49998016695265CA04B44593EA5326A015E334951D521F1F1FC330FCFCF9F3E2752451262059E5268DE3384DD35CA6993ECD9409C854BF49CB7BF469499980347D3569499F66CA04E4E8B7494BFAA44C40024DBAD7739F9409B8567493C6F1EF3572E675DEEEB92DFBF19EE56FDFF8B7EBB34FCA045C25BD49CBE52DBF9C6F3FDEF3E4B76FD45B9F9409389F26ADD14F9FC6619425E034E94D9A6FDC36EE429AB454BE4F0E9880D34437E9E6AB027DDBA4E597FAB48532012728DEA40BFF7625FBA44CC0A1729BF44A81929BB454AC4FCA041C24656A7FEA9533BF0F3D17FC0865FAA44CC0EE12A7F65E329BB454A04FCA04EC287D6A6F91DFA4A5A6FBA44CC02E5A9ADAEF6AAB494B8DF64999808D5A9DDAAF68B7494BCDF5499980D52A4CEDAFD468D252437D522660856A537BA95E93969AE89332016FA93CB56B376929BC4FCA04BCA8F2D4EEA7494BB17D5226E05B95A7769F4D5A0AEC930B8D034F549EDA9AB494D327074CC0572A4F6D4DFA4A429F94097854796A6BD22BAEED9332014B95A7B626BDEBAA3E291330AB3CB535698BF3FBA44C40E5A9AD497B39B34FCA043DAB3CB535E908E7F44999A04F95A7B6261DEDE83E2913F4A6F2D4D6A4331DD72765827E549EDA9A749523FAA44CD083CA535B9312ECDB276582DA2A4F6D4D4AB3579F9409AAAA3CB53529D9F63E2913D453796A6B522BB6F4C985C6A192CA535B935AB4A24F0E98A08CCA535B935AF7569F94090AA83CB535A99217FBA44CD0B4CA535B93AAFAB64FCA048DAA3CB535A9074FFAA44CD09CCA535B937AF3699F94091A52796A6B52CFEEFAA44CD084CA535B9398DDFAF4DFCFFF0665826095A7B626F1E8E3E3632ED3AF8F5F677EBE3BF08ACA535B937862DECDFBF5F16BFE529F2041E5A9AD497CEBF63ED3999FEF0E7CA5F2D4D6245E747706843EC1552A4F6D4DE22D9F9E9BA74F70A6CA535B9358E1C985C6F5098E56796A6B12EBBCF2C34CFA0447A83CB535892D5EFF315B7D82BD549EDA9AC476EF5E00429F608BCA535B93D8CBBA4B13E913BCABF2D4D624F6B5E5A279B73E89133C51796A6B1247D8783957074FF044E5A9AD491C67970B8DEB13DCA93CB53589A3EDF81118FA048326C176BB7F38933ED1ADCA535B9338D3411F1BA84F74A5F2D4D624CE77E807DAEA13E5559EDA9AC4554EF8A8757DA2A4CA535B93B8D609659AE91365549EDA9A4482D3CA34D3279A56796A6B12399E7C04C671F489E6549EDA9A4494930F98EEE8134DA83CB5358940D79669A64FC4AA3CB535895809659AE913512A4F6D4D225C4E9966FAC4E52A4F6D4DA20969659AE91397A83CB5358986649669A64F9CA6F2D4D6249A935CA6993E71A8E6A7F6388EF38DC7BF8826D1A8FC32CDF489DDB53DB597D5792C9026D1B4F0328DE3304D7FFFFBEBD7C7ED7F5DD2A7BBF55CFED2B79E75DA9EDAAD3429EDBB216D3D814BCA59CF5CA6F9959AB09EA53F9B14F7EBB9EAF8E9ABF55CC57A564899DAEBB4D2A421EFBB216D3D43DE92F65CCFEDCF5AFD074CC3300CD3D63F06867198869857D9A31F572FE040D3B0C32CD8CBDF6F808C15A5AD67C85BD29EEBD93E007E1F2CFD3D664AF06EB68F3E7EAAFCCF9A3DA4ADE75331DFDDAB384E5A2D6D3D43DE9262D7331F2E5DFE3ED3C6EDCDDDFB94B3DD6A3D5B044DED155A6952DA7743DA7A029794BF9E4B2E347E10E7EF719332B557732E38DD0A3F316F1D7DEA5CE5A9AD49F4A0649966FAD4A1CA535B93E847E132CDF4A91395A7B626D19BF2659AE9536195A7B626D1A74ECA34D3A7622A4F6D4DA2675D9569A64F05549EDA9A041D9669A64F8DAA3CB5350966DD9669A64F0DA93CB53509963A2FD34C9FC2559EDA9A048F94E9469F02559EDA9A045F51A63BFA14A2F2D4D624784E993EA54F17AA3CB535095EA14C4FE8D3C92A4F6D4D82D755BAD0F841F4E90495A7B626C15B1C30BD4E9F0E52796A6B12ACA04CEFD2A71D559EDA9A04AB29D33AFAB451E5A9AD49B091326DA14F2B549EDA9A04BB50A6EDF4E94595A7B626C18E94692FFAF444E5A9AD49B03B65DA973EDDA93CB535090EA24C47D0A7419380D594E938DDF6A9F2D4D6243881321DADAB3E559EDA9A04A751A67394EF53E5A9AD497032653A53C93E559EDA9A049750A6F395E953E5A9AD497021171ABF4AD37DAA3CB53509AEE580E972CDF5A9F2D4D62448A04C21E63E8597A9F2D4D624C8A14CBCE2C7D50B00BA30D74899784E9380F32813CF6912703665E22B9A045C439978A449C0959489254D02AEA74CCC340948A14C68129045997AA649402265EA932601B994A937FFBB7A0100DF9886691AA6B94CD4A649401BE62C29536DF6EE8066D8CA2B4F9380C62853619A043449994AD224A061CA548C2601CD53A63234092842990AD024A014656A9A2601052953A33409284B999AA3494071CAD4104D02BAA04C4DD024A023CA14CE355881EEB8D0782C4D023AE542E381ECDD01FDB29597469380DE29530E4D02180665CAA049007F29D3B5A29B348E7FDF7B9CA66979CFFCE5A7F7006CA44C57896ED2F06F69C6715CA6689AA6C77B2E58225094329D2FBD4900D752A633A53769DE9A7300045C4B99CE91D5A4BB3787B6EFCB3DBE2305B09A321D2DAB49BB67438780DD29D37172AF2DB43CC4014873BB689EAB13ED28FA5CB557CEFC7E722EB833F180733866DA4BE5A9AD49C099C66194A58D72F7EE00DA622B6FBBAC731C009AE6F4878D34096067CAB49A26011C429956D024800329D35B3409E070CAF4224D023889327D4B93004EA54C4F6812C00594E9539A04701965BAA349001753A61B4D0288A04C83260144E9BC4CAEC10A10E7F6E14C572FE46C9A0410AAC30B8DDBBB03C8D5DB569E2601A4EBA74C9A04D0861ECAA449002DA95D264D02684FD532691240ABEA95499300DA56A94C7E3EE93CE398F5430669EB19F296643DDF4A5B52CFEBB9FD98EDF39F674A7B88EE384E02A8A3F563264D02A8A6DD326912404D2D964993002A6BAB4CE334A52F71B5F0B7F200CE360DC338248FFDCA4D02A02DCE0507208526019042930048A14900A4287B2EF838069DBE713B0330644969EBB9C979D696276D262C29ED29BB3BA9356155B10F51C27AEE5E59516BBB53B3495167812FBF1B12666EDA7A6EA29EB521E9E51AF8947D3AE02E94F61045ADE7EE098A5ADBA39A7B77518F72D46286BCF5CC025F1B99D21E254F5CBEB69EA09AC7497C6BFEA7535BDFAC278B7A8832375B7282344D53E643C4BB34E92451036EF8B392909912B28CA5B4CD8DB4F5A449DB8F5A3692B768D219125E24E16E2F608F552B3C53CF2D1B79ED4ADA52F3FDA428692FDDC057C8F4C790712819F810D116DF42AB394E3A43D489C576DEBF95F610A5AD2750DA4394B69EA5E4B50DAEC10A400E7B7700A4D024005268120029340980149A04400A4D02208526019042930048A14900A4D024005268120029340980149A04400A4D02208526019042930048A14900A4D024005268120029340980149A04400A4D02208526019042930048A14900A4D024005268120029340980149A04400A4D022085260190E2FFA8D148F4A23149700000000049454E44AE426082>|png>||||>|>
  </enumerate-numeric>
</body>

<\initial>
  <\collection>
    <associate|page-type|letter>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|1|?>>
  </collection>
</references>