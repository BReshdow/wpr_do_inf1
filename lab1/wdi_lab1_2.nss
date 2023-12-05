<!DOCTYPE nsscheme>
<nsscheme type="sequence">
  <position>
    <x>4</x>
    <y>30</y>
  </position>
  <size>
    <width>1710</width>
    <height>810</height>
  </size>
  <name>wdi_lab1_2</name>
  <comment></comment>
  <author>Ihor Shypilov</author>
  <pascalCode contains="yes"/>
  <checkSyntax enabled="yes"/>
  <variables>
    <variable>
      <name>a</name>
      <type>
        <double/>
      </type>
      <value>3</value>
    </variable>
    <variable>
      <name>b</name>
      <type>
        <double/>
      </type>
      <value>4</value>
    </variable>
    <variable>
      <name>c</name>
      <type>
        <double/>
      </type>
      <value>6</value>
    </variable>
    <variable>
      <name>pol</name>
      <type>
        <double/>
      </type>
      <value>4.45064e-308</value>
    </variable>
    <variable>
      <name>pole</name>
      <type>
        <double/>
      </type>
      <value>5.33268</value>
    </variable>
    <variable>
      <name>polobw</name>
      <type>
        <double/>
      </type>
      <value>6.5</value>
    </variable>
    <variable>
      <name>s</name>
      <type>
        <double/>
      </type>
      <value>2.3342e-313</value>
    </variable>
    <variable>
      <name>tmp</name>
      <type>
        <double/>
      </type>
      <value>5</value>
    </variable>
  </variables>
  <sequence>
    <outputinstruction>
      <text>'Sprawdzanie trojkata'</text>
      <comment></comment>
    </outputinstruction>
    <inputinstruction>
      <text>a, b, c</text>
      <comment></comment>
    </inputinstruction>
    <selection instructionsheight="594" conditionheight="110">
      <condition>
        <text>a + b > c</text>
        <comment></comment>
      </condition>
      <ontrue>
        <sequence>
          <selection instructionsheight="496" conditionheight="92">
            <condition>
              <text>a + c > b</text>
              <comment></comment>
            </condition>
            <ontrue>
              <sequence>
                <selection instructionsheight="414" conditionheight="76">
                  <condition>
                    <text>b + c > a</text>
                    <comment></comment>
                  </condition>
                  <ontrue>
                    <sequence>
                      <simpleinstruction>
                        <text>pol := (a + b + c) / 2</text>
                        <comment></comment>
                      </simpleinstruction>
                      <simpleinstruction>
                        <text>s := sqrt(pol * (pol - a) * (pol - b) * (pol - c))</text>
                        <comment></comment>
                      </simpleinstruction>
                      <outputinstruction>
                        <text>'Pole trojkata = ', s</text>
                        <comment></comment>
                      </outputinstruction>
                      <selection instructionsheight="284" conditionheight="52">
                        <condition>
                          <text>a * a + b * b = c * c</text>
                          <comment></comment>
                        </condition>
                        <ontrue>
                          <sequence>
                            <outputinstruction>
                              <text>'Trojkat jest prostokatny'</text>
                              <comment></comment>
                            </outputinstruction>
                          </sequence>
                        </ontrue>
                        <onfalse>
                          <sequence>
                            <selection instructionsheight="235" conditionheight="43">
                              <condition>
                                <text>a * a + b * b &lt; c * c</text>
                                <comment></comment>
                              </condition>
                              <ontrue>
                                <sequence>
                                  <outputinstruction>
                                    <text>'Trojkat jest rozwartokatny'</text>
                                    <comment></comment>
                                  </outputinstruction>
                                </sequence>
                              </ontrue>
                              <onfalse>
                                <sequence>
                                  <outputinstruction>
                                    <text>'Trojkat jest ostrokatny'</text>
                                    <comment></comment>
                                  </outputinstruction>
                                </sequence>
                              </onfalse>
                            </selection>
                          </sequence>
                        </onfalse>
                      </selection>
                    </sequence>
                  </ontrue>
                  <onfalse>
                    <sequence>
                      <outputinstruction>
                        <text>'Trojkat nie istnieje'</text>
                        <comment></comment>
                      </outputinstruction>
                    </sequence>
                  </onfalse>
                </selection>
              </sequence>
            </ontrue>
            <onfalse>
              <sequence>
                <outputinstruction>
                  <text>'Trojkat nie istnieje'</text>
                  <comment></comment>
                </outputinstruction>
              </sequence>
            </onfalse>
          </selection>
        </sequence>
      </ontrue>
      <onfalse>
        <sequence>
          <outputinstruction>
            <text>'Trojkat nie istnieje'</text>
            <comment></comment>
          </outputinstruction>
        </sequence>
      </onfalse>
    </selection>
  </sequence>
</nsscheme>
