package k5;

import java.util.Hashtable;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes3.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f66655a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f66656b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f66657c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f66658d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f66659e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f66660f = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f66665k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f66666l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f66667m = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Hashtable f66661g = new Hashtable();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Hashtable f66662h = new Hashtable();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TreeMap f66663i = new TreeMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f66664j = "List of non fatal errors produced during parsing:\n\n";

    public void a() {
        Hashtable hashtable = new Hashtable();
        for (b bVar : this.f66663i.values()) {
            a aVar = bVar.f66650a;
            if (aVar != null) {
                String str = aVar.f66641a;
                if (!hashtable.containsKey(str)) {
                    hashtable.put(str, bVar.f66650a);
                }
            }
        }
        this.f66661g = hashtable;
    }
}
