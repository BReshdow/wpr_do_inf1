<!DOCTYPE nsscheme>
<nsscheme type="sequence">
  <position>
    <x>4</x>
    <y>30</y>
  </position>
  <size>
    <width>1027</width>
    <height>550</height>
  </size>
  <name>wdi_lab1_3</name>
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
      <value>2</value>
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
      <value>-3</value>
    </variable>
    <variable>
      <name>d</name>
      <type>
        <double/>
      </type>
      <value>40</value>
    </variable>
    <variable>
      <name>pole</name>
      <type>
        <double/>
      </type>
      <value>8.9007e-308</value>
    </variable>
    <variable>
      <name>polobw</name>
      <type>
        <double/>
      </type>
      <value>1.60221e-306</value>
    </variable>
    <variable>
      <name>tmp</name>
      <type>
        <double/>
      </type>
      <value>9.45734e-308</value>
    </variable>
    <variable>
      <name>x</name>
      <type>
        <double/>
      </type>
      <value>-0.25</value>
    </variable>
    <variable>
      <name>x1</name>
      <type>
        <double/>
      </type>
      <value>-5.16228</value>
    </variable>
    <variable>
      <name>x2</name>
      <type>
        <double/>
      </type>
      <value>1.16228</value>
    </variable>
  </variables>
  <sequence>
    <outputinstruction>
      <text>'Rozwiazywanie rownania typu ax^2 + bx + c = 0.'</text>
      <comment></comment>
    </outputinstruction>
    <inputinstruction>
      <text>a, b, c</text>
      <comment></comment>
    </inputinstruction>
    <simpleinstruction>
      <text>d := b*b - (4 * a * c)</text>
      <comment></comment>
    </simpleinstruction>
    <selection instructionsheight="314" conditionheight="106">
      <condition>
        <text>a &lt;> 0</text>
        <comment></comment>
      </condition>
      <ontrue>
        <sequence>
          <selection instructionsheight="171" conditionheight="137">
            <condition>
              <text>d > 0</text>
              <comment></comment>
            </condition>
            <ontrue>
              <sequence>
                <simpleinstruction>
                  <text>x1 := ((-b) - sqrt(d)) / 2</text>
                  <comment></comment>
                </simpleinstruction>
                <simpleinstruction>
                  <text>x2 := ((-b) + sqrt(d)) / 2</text>
                  <comment></comment>
                </simpleinstruction>
                <outputinstruction>
                  <text>'x1 = ', x1</text>
                  <comment></comment>
                </outputinstruction>
                <outputinstruction>
                  <text>'x2 = ', x2</text>
                  <comment></comment>
                </outputinstruction>
              </sequence>
            </ontrue>
            <onfalse>
              <sequence>
                <selection instructionsheight="60" conditionheight="105">
                  <condition>
                    <text>d = 0</text>
                    <comment></comment>
                  </condition>
                  <ontrue>
                    <sequence>
                      <simpleinstruction>
                        <text>x := (-b) / (2 * a)</text>
                        <comment></comment>
                      </simpleinstruction>
                      <outputinstruction>
                        <text>'x = ', x</text>
                        <comment></comment>
                      </outputinstruction>
                    </sequence>
                  </ontrue>
                  <onfalse>
                    <sequence>
                      <outputinstruction>
                        <text>'d musi byc >= 0!'</text>
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
          <selection instructionsheight="260" conditionheight="48">
            <condition>
              <text>b &lt;> 0</text>
              <comment></comment>
            </condition>
            <ontrue>
              <sequence>
                <simpleinstruction>
                  <text>x := (-c)/b</text>
                  <comment></comment>
                </simpleinstruction>
                <outputinstruction>
                  <text>'x = ', x</text>
                  <comment></comment>
                </outputinstruction>
              </sequence>
            </ontrue>
            <onfalse>
              <sequence>
                <selection instructionsheight="214" conditionheight="40">
                  <condition>
                    <text>c &lt;> 0</text>
                    <comment></comment>
                  </condition>
                  <ontrue>
                    <sequence>
                      <outputinstruction>
                        <text>'taki x nie istnieje'</text>
                        <comment></comment>
                      </outputinstruction>
                    </sequence>
                  </ontrue>
                  <onfalse>
                    <sequence>
                      <outputinstruction>
                        <text>'x = wszystkie liczby'</text>
                        <comment></comment>
                      </outputinstruction>
                    </sequence>
                  </onfalse>
                </selection>
              </sequence>
            </onfalse>
          </selection>
        </sequence>
      </onfalse>
    </selection>
  </sequence>
</nsscheme>
