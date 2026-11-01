package y00;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.types.u;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a extends org.apache.tools.ant.types.e implements u, Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f78552a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Collection f78553b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f78554c = true;

    private synchronized Collection e() {
        try {
            if (this.f78553b == null || !i()) {
                this.f78553b = f();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f78553b;
    }

    @Override // org.apache.tools.ant.types.u
    public synchronized boolean a() {
        if (isReference()) {
            return ((a) getCheckedRef()).a();
        }
        dieOnCircularReference();
        Iterator it = this.f78552a.iterator();
        boolean zA = true;
        while (zA && it.hasNext()) {
            zA = ((u) it.next()).a();
        }
        if (zA) {
            return true;
        }
        Iterator it2 = e().iterator();
        while (it2.hasNext()) {
            if (!(it2.next() instanceof c)) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.tools.ant.types.e, org.apache.tools.ant.q
    public Object clone() {
        try {
            a aVar = (a) super.clone();
            aVar.f78552a = new ArrayList(this.f78552a);
            aVar.f78553b = null;
            return aVar;
        } catch (CloneNotSupportedException e11) {
            throw new BuildException(e11);
        }
    }

    public synchronized void d(u uVar) {
        Project project;
        try {
            if (isReference()) {
                throw noChildrenAllowed();
            }
            if (uVar == null) {
                return;
            }
            if (Project.q(uVar) == null && (project = getProject()) != null) {
                project.K(uVar);
            }
            this.f78552a.add(uVar);
            b.c(this);
            this.f78553b = null;
            setChecked(false);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // org.apache.tools.ant.types.e
    protected synchronized void dieOnCircularReference(Stack stack, Project project) {
        try {
            if (isChecked()) {
                return;
            }
            if (isReference()) {
                super.dieOnCircularReference(stack, project);
            } else {
                for (Object obj : this.f78552a) {
                    if (obj instanceof org.apache.tools.ant.types.e) {
                        stack.push(obj);
                        org.apache.tools.ant.types.e.invokeCircularReferenceCheck((org.apache.tools.ant.types.e) obj, stack, project);
                        stack.pop();
                    }
                }
                setChecked(true);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    protected abstract Collection f();

    protected final synchronized List g() {
        dieOnCircularReference();
        return Collections.unmodifiableList(this.f78552a);
    }

    public synchronized boolean i() {
        return this.f78554c;
    }

    @Override // org.apache.tools.ant.types.u
    public final synchronized Iterator iterator() {
        if (isReference()) {
            return ((a) getCheckedRef()).iterator();
        }
        dieOnCircularReference();
        return new b(this, e().iterator());
    }

    public synchronized void j(boolean z10) {
        this.f78554c = z10;
    }

    @Override // org.apache.tools.ant.types.u
    public synchronized int size() {
        if (isReference()) {
            return ((a) getCheckedRef()).size();
        }
        dieOnCircularReference();
        return e().size();
    }

    @Override // org.apache.tools.ant.types.e
    public synchronized String toString() {
        if (isReference()) {
            return getCheckedRef().toString();
        }
        if (e().size() == 0) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        Iterator it = this.f78553b.iterator();
        while (it.hasNext()) {
            if (stringBuffer.length() > 0) {
                stringBuffer.append(File.pathSeparatorChar);
            }
            stringBuffer.append(it.next());
        }
        return stringBuffer.toString();
    }
}
