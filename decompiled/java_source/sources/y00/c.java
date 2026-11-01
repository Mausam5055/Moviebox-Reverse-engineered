package y00;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.types.r;
import org.apache.tools.ant.types.t;

/* JADX INFO: loaded from: classes7.dex */
public class c extends t {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final org.apache.tools.ant.util.d f78558j = org.apache.tools.ant.util.d.k();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f78559k = t.g("null file".getBytes());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private File f78560h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private File f78561i;

    public c() {
    }

    public c(File file, String str) {
        u(f78558j.q(file, str));
        t(file);
    }

    @Override // org.apache.tools.ant.types.t, org.apache.tools.ant.types.u
    public boolean a() {
        return !isReference() || ((c) getCheckedRef()).a();
    }

    @Override // org.apache.tools.ant.types.t, java.lang.Comparable
    public int compareTo(Object obj) {
        if (isReference()) {
            return ((Comparable) getCheckedRef()).compareTo(obj);
        }
        if (equals(obj)) {
            return 0;
        }
        if (!obj.getClass().equals(getClass())) {
            return super.compareTo(obj);
        }
        c cVar = (c) obj;
        File fileR = r();
        if (fileR == null) {
            return -1;
        }
        File fileR2 = cVar.r();
        if (fileR2 == null) {
            return 1;
        }
        return fileR.compareTo(fileR2);
    }

    @Override // org.apache.tools.ant.types.t
    public InputStream e() {
        return isReference() ? ((t) getCheckedRef()).e() : new FileInputStream(s());
    }

    @Override // org.apache.tools.ant.types.t
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (isReference()) {
            return getCheckedRef().equals(obj);
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        c cVar = (c) obj;
        if (r() == null) {
            return cVar.r() == null;
        }
        return r().equals(cVar.r());
    }

    @Override // org.apache.tools.ant.types.t
    public long f() {
        return isReference() ? ((t) getCheckedRef()).f() : s().lastModified();
    }

    @Override // org.apache.tools.ant.types.t
    public String getName() {
        if (isReference()) {
            return ((t) getCheckedRef()).getName();
        }
        File fileQ = q();
        return fileQ == null ? s().getName() : f78558j.p(fileQ, s());
    }

    @Override // org.apache.tools.ant.types.t
    public int hashCode() {
        if (isReference()) {
            return getCheckedRef().hashCode();
        }
        return t.f71533f * (r() == null ? f78559k : r().hashCode());
    }

    @Override // org.apache.tools.ant.types.t
    public long i() {
        return isReference() ? ((t) getCheckedRef()).i() : s().length();
    }

    @Override // org.apache.tools.ant.types.t
    public boolean j() {
        return isReference() ? ((t) getCheckedRef()).j() : s().isDirectory();
    }

    @Override // org.apache.tools.ant.types.t
    public boolean k() {
        return isReference() ? ((t) getCheckedRef()).k() : s().exists();
    }

    public File q() {
        return isReference() ? ((c) getCheckedRef()).q() : this.f78561i;
    }

    public File r() {
        return isReference() ? ((c) getCheckedRef()).r() : this.f78560h;
    }

    protected File s() {
        if (r() != null) {
            return r();
        }
        throw new BuildException("file attribute is null!");
    }

    @Override // org.apache.tools.ant.types.t, org.apache.tools.ant.types.e
    public void setRefid(r rVar) {
        if (this.f78560h != null || this.f78561i != null) {
            throw tooManyAttributes();
        }
        super.setRefid(rVar);
    }

    public void t(File file) {
        checkAttributesAllowed();
        this.f78561i = file;
    }

    @Override // org.apache.tools.ant.types.t, org.apache.tools.ant.types.e
    public String toString() {
        if (isReference()) {
            return getCheckedRef().toString();
        }
        File file = this.f78560h;
        if (file == null) {
            return "(unbound file resource)";
        }
        return f78558j.o(file.getAbsolutePath()).getAbsolutePath();
    }

    public void u(File file) {
        checkAttributesAllowed();
        this.f78560h = file;
    }
}
