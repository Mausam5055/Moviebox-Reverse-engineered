package u00;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import org.apache.tools.ant.Location;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.RuntimeConfigurable;
import org.apache.tools.ant.t;
import org.xml.sax.Attributes;
import org.xml.sax.Locator;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Project f76529a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private File f76530b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f76532d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f76533e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Locator f76534f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Vector f76531c = new Vector();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private t f76535g = new t();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private t f76536h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Vector f76537i = new Vector();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f76538j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Map f76539k = new HashMap();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Map f76540l = null;

    public a(Project project) {
        this.f76529a = project;
        this.f76535g.m(project);
        this.f76535g.l("");
        this.f76531c.addElement(this.f76535g);
    }

    public void a(t tVar) {
        this.f76531c.addElement(tVar);
        this.f76536h = tVar;
    }

    public void b(Object obj, Attributes attributes) {
        String value = attributes.getValue("id");
        if (value != null) {
            this.f76529a.b(value, obj);
        }
    }

    public RuntimeConfigurable c() {
        if (this.f76537i.size() < 1) {
            return null;
        }
        Vector vector = this.f76537i;
        return (RuntimeConfigurable) vector.elementAt(vector.size() - 1);
    }

    public void d(String str) {
        List list = (List) this.f76539k.get(str);
        if (list == null || list.size() == 0) {
            return;
        }
        list.remove(list.size() - 1);
    }

    public File e() {
        return this.f76530b;
    }

    public File f() {
        return this.f76532d;
    }

    public String g() {
        return this.f76533e;
    }

    public t h() {
        return this.f76536h;
    }

    public Map i() {
        return this.f76540l;
    }

    public t j() {
        return this.f76535g;
    }

    public Locator k() {
        return this.f76534f;
    }

    public String l(String str) {
        List list = (List) this.f76539k.get(str);
        if (list == null || list.size() == 0) {
            return null;
        }
        return (String) list.get(list.size() - 1);
    }

    public Project m() {
        return this.f76529a;
    }

    public boolean n() {
        return this.f76538j;
    }

    public void o() {
        if (this.f76537i.size() > 0) {
            Vector vector = this.f76537i;
            vector.removeElementAt(vector.size() - 1);
        }
    }

    public void p(RuntimeConfigurable runtimeConfigurable) {
        this.f76537i.addElement(runtimeConfigurable);
    }

    public void q(File file) {
        this.f76530b = file;
        this.f76532d = new File(file.getParent());
        this.f76535g.k(new Location(file.getAbsolutePath()));
    }

    public void r(String str) {
        this.f76533e = str;
    }

    public void s(t tVar) {
        this.f76536h = tVar;
    }

    public void t(t tVar) {
        this.f76535g = tVar;
    }

    public void u(Locator locator) {
        this.f76534f = locator;
    }

    public void v(String str, String str2) {
        List arrayList = (List) this.f76539k.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.f76539k.put(str, arrayList);
        }
        arrayList.add(str2);
    }
}
