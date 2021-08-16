DEVICE?=5CSEBA6U19I7
QSF=cv96.qsf

%.json: %.v
	yosys -p "synth_intel_alm -top top -nodsp -nolutram -nobram; write_json $@" $^

%.rbf: %.json ${QSF}
	nextpnr-mistral --device ${DEVICE} --json $< --qsf ${QSF} --router router2 --rbf $@

clean:
	rm -f *.json *.rbf

.PRECIOUS: *.json *.rbf
