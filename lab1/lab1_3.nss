<!DOCTYPE nsscheme>
<nsscheme type="sequence">
  <position>
    <x>4</x>
    <y>30</y>
  </position>
  <size>
    <width>839</width>
    <height>487</height>
  </size>
  <name>wdi_lab1_3</name>
  <comment></comment>
  <author></author>
  <pascalCode contains="yes"/>
  <checkSyntax enabled="yes"/>
  <variables>
    <variable>
      <name>a</name>
      <type>
        <double/>
      </type>
      <value>1</value>
    </variable>
    <variable>
      <name>b</name>
      <type>
        <double/>
      </type>
      <value>-5</value>
    </variable>
    <variable>
      <name>c</name>
      <type>
        <double/>
      </type>
      <value>6</value>
    </variable>
    <variable>
      <name>d</name>
      <type>
        <double/>
      </type>
      <value>1</value>
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
      <value>-3</value>
    </variable>
    <variable>
      <name>x1</name>
      <type>
        <double/>
      </type>
      <value>2</value>
    </variable>
    <variable>
      <name>x2</name>
      <type>
        <double/>
      </type>
      <value>3</value>
    </variable>
  </variables>
  <sequence>
    <outputinstruction>
      <text>'Rownanie kwadratowe'</text>
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
    <selection instructionsheight="242" conditionheight="143">
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
          <selection instructionsheight="117" conditionheight="119">
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
                  <text>'delta musi byc wieksza/rowna 0'</text>
                  <comment></comment>
                </outputinstruction>
              </sequence>
            </onfalse>
          </selection>
        </sequence>
      </onfalse>
    </selection>
  </sequence>
</nsscheme>
