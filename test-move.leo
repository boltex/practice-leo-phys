<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="felix.20220608235314.1"><vh>@script MyStartupCode</vh></v>
<v t="felix.20220608235601.1"><vh>@command testComFil</vh></v>
<v t="felix.20220608235401.1"><vh>@button TestBut</vh></v>
<v t="felix.20220605144702.1"><vh>@settings</vh>
<v t="felix.20220605144717.1"><vh>@string new-leo-file-encoding = utF-8</vh></v>
<v t="felix.20220605145047.1"><vh>@bool sparse-move-outline-left = False</vh></v>
</v>
<v t="felix.20220605144712.1"><vh>newHeadline</vh></v>
<v t="felix.20220605143857.1"><vh>NewHeadline</vh>
<v t="felix.20220605144331.1"><vh>sdfrs</vh></v>
</v>
<v t="felix.20220605143901.1"><vh>test1</vh></v>
<v t="felix.20220605143908.1"><vh>test2 with childs</vh>
<v t="felix.20220605143912.1"><vh>ch1</vh></v>
<v t="felix.20220605143915.1"><vh>ch2</vh>
<v t="felix.20220605144259.1"><vh>erte</vh>
<v t="felix.20220605144302.1"><vh>sdfsdf</vh></v>
</v>
</v>
<v t="felix.20220605143921.1"><vh>ch3 06/11</vh></v>
</v>
<v t="felix.20220605143928.1"><vh>below</vh></v>
</vnodes>
<tnodes>
<t tx="felix.20220605143857.1">
g.es(str(sorted(c.config.__dict__)))</t>
<t tx="felix.20220605143901.1"></t>
<t tx="felix.20220605143908.1"></t>
<t tx="felix.20220605143912.1"></t>
<t tx="felix.20220605143915.1"></t>
<t tx="felix.20220605143921.1"></t>
<t tx="felix.20220605143928.1">g.es(c.collapse_nodes_after_move)
g.es(c.sparse_move)

#g.es(c.config.collapse_nodes_after_move)
#g.es(c.config.sparse_move)

g.es(g.app.signon)</t>
<t tx="felix.20220605144259.1"></t>
<t tx="felix.20220605144302.1"></t>
<t tx="felix.20220605144331.1"></t>
<t tx="felix.20220605144702.1"></t>
<t tx="felix.20220605144712.1"># g.es(c.config.new_leo_file_encoding)

# g.es(g.app.config.new_leo_file_encoding)

# g.es(list(g.app.config.ivarsDict.keys()))

g.es(g.app.config.get('new_leo_file_encoding'))</t>
<t tx="felix.20220605144717.1">Test encoding
</t>
<t tx="felix.20220605145047.1">True: collapse the parent of the moved node when moving a node left.
</t>
<t tx="felix.20220608235314.1">@language python 
# test script at startup!!
# (wont work because of scripting-at-script-nodes setting ! )
g.es("HI AT STARTUP BOYz")
</t>
<t tx="felix.20220608235401.1">@language python
# test button
g.es("Here is my headline: " + p.h)
</t>
<t tx="felix.20220608235601.1">g.es("test Command!!")
</t>
</tnodes>
</leo_file>
