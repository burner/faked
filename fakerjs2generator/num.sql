--	final string numberBuild(string s, dchar sym = '#') {
--		auto app = appender!string();
--		for(size_t idx = 0; idx < s.length; ++idx) {
--            dchar c = s[idx];
--			if(c == sym) {
--				formattedWrite(app, "%%d", uniform(0, 10, this.rnd));
--            } else if(c == '[') {
--                ++idx;
--                size_t start = idx;
--                while(idx < s.length && s[idx] != ']') {
--                    ++idx;
--                }
--                enforce(idx < s.length && s[idx] == ']');
--                string[] ft = s[start .. idx].split("-");
--                enforce(ft.length == 2);
--                int[] ftI = ft.map!(a => to!int(a)).array;
--                enforce(ft.length == 2);
--                int n = uniform(ftI[0], ftI[1], this.rnd);
--                formattedWrite(app, "%%d", n);
--            } else if(c == '!') {
--				formattedWrite(app, "%%d", uniform(2, 10, this.rnd));
--			} else {
--				app.put(c);
--			}
--		}
--		return app.data;
--	}

CREATE OR REPLACE FUNCTION numberBuild(s TEXT, sym TEXT = '#') RETURNS TEXT
AS $$
DECLARE
	ret TEXT = '';
	front TEXT;

BEGIN
	FOR idx IN 1 .. LENGTH(s) LOOP
		front = LEFT(SUBSTR(s, idx, LENGTH(s)), 1);
		IF front = sym THEN
			ret = ret || floor(random() * (10-1) + 0)::int;
		ELSIF front = '[' THEN
			WHILE
		END IF;
	END LOOP;
	RETURN RET;
END;
$$ LANGUAGE plpgsql;
