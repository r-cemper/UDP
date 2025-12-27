Class UDP.demo
{

ClassMethod ini(port = 5200) As %Net.UDP
{
	write "hi",!
	set env=$system.Util.GetEnviron("UDP")
	write "$UDP=",env,!
	; prepare host
	set host="iris"_$s(env>0:env,1:"")
	set %host=##class(%Net.UDP).GetHostAddr(host)
	set %udp=##class(%Net.UDP).%New(port)
	quit %udp
}

ClassMethod get() As %String
{
	quit %udp.Recv()
}

ClassMethod log()
{
	for  set txt=%udp.Recv() use 0 if $l(txt) write txt,! quit:txt[$c(3)
}

ClassMethod send(txt As %String = "hi UDP !", port = 5200) As %String
{
	quit %udp.Send(txt,%host,port)
}

ClassMethod lorem(port)
{
	set nl=$c(13,10)
	set lorem="Lorem ipsum dolor sit amet, consectetuer adipiscing elit, "_nl_
		"sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna "_nl_
		"aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud "_nl_
		"exercitation ulliam corper suscipit lobortis nisl ut aliquip ex ea "_nl_
		"commodo consequat. Duis autem veleum iriure dolor in hendrerit in "_nl_
		"vulputate velit esse molestie consequat, vel willum lunombro dolore "_nl_
		"eu feugiat nulla facilisis at vero eros et accumsan et iusto odio "_nl_
		"dignissim qui blandit praesent luptatum zzril delenit augue duis "_nl_
		"dolore te feugait nulla facilisi. Li Europan lingues es membres del "_nl_
		"sam familie. Lor separat existentie es un myth. Por scientie, musica, "_nl_
		"sport etc., li tot Europa usa li sam vocabularium. Li lingues differe "_nl_
		"solmen in li grammatica, li pronunciation e li plu commun vocabules. "_nl_
		"Omnicos directe al desirabilit… de un nov lingua franca: on refusa "_nl_
		"continuar payar custosi traductores. It solmen va esser necessi far "_nl_
		"uniform grammatica, pronunciation e plu sommun paroles. Ma quande "_nl_
		"lingues coalesce, li grammatica del resultant lingue es plu simplic "_nl_
		"e regulari quam ti del coalescent lingues. Li nov lingua franca va "_nl_
		"esser plu simplic e regulari quam li existent Europan lingues. It va "_nl_
		"esser tam simplic quam Occidental: in fact, it va esser Occidental. A "_nl_
		"un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge "_nl_
		"amico dit me que Occidental es."_nl_$c(3)

	for i=1:1:$l(lorem,nl) {
		set txt=$p(lorem,nl,i)
		do ##class(UDP.demo).send(txt,port) hang .5
		}
}

}
