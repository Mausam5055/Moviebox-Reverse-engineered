package org.mvel2.sh;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.util.n;
import org.mvel2.util.s;
import q10.c;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String[] f72008m = new String[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f72009a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map f72010b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map f72011c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ParserContext f72012d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    VariableResolverFactory f72013e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f72014f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f72015g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f72016h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private PrintStream f72017i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f72018j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    s f72019k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final BufferedReader f72020l;

    /* JADX INFO: renamed from: org.mvel2.sh.a$a, reason: collision with other inner class name */
    public static final class C0874a {
    }

    public a() {
        HashMap map = new HashMap();
        this.f72009a = map;
        this.f72012d = new ParserContext();
        this.f72015g = false;
        this.f72016h = 0;
        PrintStream printStream = System.out;
        this.f72017i = printStream;
        this.f72019k = new s();
        this.f72020l = new BufferedReader(new InputStreamReader(System.in));
        printStream.println("Starting session...");
        this.f72010b = new HashMap();
        this.f72011c = new HashMap();
        map.putAll(new p10.a().a());
        map.putAll(new c().a());
        this.f72011c.put("$PROMPT", "[@{ new java.text.SimpleDateFormat('hh:mmaa').format(new java.util.Date(System.currentTimeMillis()))}] mvel2$ ");
        this.f72011c.put("$OS_NAME", System.getProperty("os.name"));
        this.f72011c.put("$OS_VERSION", System.getProperty("os.version"));
        this.f72011c.put("$JAVA_VERSION", n.f());
        this.f72011c.put("$CWD", new File(".").getAbsolutePath());
        this.f72011c.put("$COMMAND_PASSTRU", "false");
        this.f72011c.put("$PRINTOUTPUT", "true");
        this.f72011c.put("$ECHO", "false");
        this.f72011c.put("$SHOW_TRACES", "true");
        this.f72011c.put("$USE_OPTIMIZER_ALWAYS", "false");
        this.f72011c.put("$PATH", "");
        try {
            ResourceBundle bundle = ResourceBundle.getBundle(".mvelsh.properties");
            Enumeration<String> keys = bundle.getKeys();
            while (keys.hasMoreElements()) {
                Map map2 = this.f72011c;
                String strNextElement = keys.nextElement();
                map2.put(strNextElement, bundle.getString(strNextElement));
            }
        } catch (MissingResourceException unused) {
            System.out.println("No config file found.  Loading default config.");
            if (!n.a(System.getProperty("os.name").toLowerCase(), "windows")) {
                this.f72011c.put("$PATH", "/bin:/usr/bin:/sbin:/usr/sbin");
            }
        }
        this.f72013e = new MapVariableResolverFactory((Map<String, Object>) this.f72010b, new MapVariableResolverFactory(this.f72011c));
    }

    public String j(int i11) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i12 = 0; i12 < i11; i12++) {
            stringBuffer.append(" ");
        }
        return stringBuffer.toString();
    }
}
