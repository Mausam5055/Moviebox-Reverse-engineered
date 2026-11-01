package t00;

import android.support.v4.media.session.c;
import java.io.Reader;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Vector;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.types.h;
import org.apache.tools.ant.types.m;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static /* synthetic */ Class f75963e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static /* synthetic */ Class f75964f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static /* synthetic */ Class f75965g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Reader f75966a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f75967b = 8192;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Vector f75968c = new Vector();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Project f75969d = null;

    static /* synthetic */ Class a(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e11) {
            throw new NoClassDefFoundError(e11.getMessage());
        }
    }

    private void f(Object obj) {
        Project project = this.f75969d;
        if (project == null) {
            return;
        }
        if (obj instanceof s00.a) {
            ((s00.a) obj).b(project);
        } else {
            project.K(obj);
        }
    }

    public Reader b() {
        Class<?> cls;
        Reader reader = this.f75966a;
        if (reader == null) {
            throw new BuildException("primaryReader must not be null.");
        }
        int size = this.f75968c.size();
        Vector vector = new Vector();
        for (int i11 = 0; i11 < size; i11++) {
            Vector vectorE = ((h) this.f75968c.elementAt(i11)).e();
            int size2 = vectorE.size();
            for (int i12 = 0; i12 < size2; i12++) {
                vector.addElement(vectorE.elementAt(i12));
            }
        }
        int size3 = vector.size();
        if (size3 > 0) {
            for (int i13 = 0; i13 < size3; i13++) {
                if (vector.elementAt(i13) instanceof org.apache.tools.ant.types.a) {
                    org.apache.tools.ant.types.a aVar = (org.apache.tools.ant.types.a) vector.elementAt(i13);
                    String strE = aVar.e();
                    m mVarF = aVar.f();
                    Project project = aVar.getProject();
                    if (strE == null) {
                        continue;
                    } else {
                        if (mVarF == null) {
                            try {
                                cls = Class.forName(strE);
                            } catch (ClassNotFoundException e11) {
                                throw new BuildException(e11);
                            } catch (IllegalAccessException e12) {
                                throw new BuildException(e12);
                            } catch (InstantiationException e13) {
                                throw new BuildException(e13);
                            } catch (InvocationTargetException e14) {
                                throw new BuildException(e14);
                            }
                        } else {
                            cls = Class.forName(strE, true, project.g(mVarF));
                        }
                        if (cls == null) {
                            continue;
                        } else {
                            Class clsA = f75963e;
                            if (clsA == null) {
                                clsA = a("java.io.FilterReader");
                                f75963e = clsA;
                            }
                            if (!clsA.isAssignableFrom(cls)) {
                                StringBuffer stringBuffer = new StringBuffer();
                                stringBuffer.append(strE);
                                stringBuffer.append(" does not extend java.io.FilterReader");
                                throw new BuildException(stringBuffer.toString());
                            }
                            Constructor<?>[] constructors = cls.getConstructors();
                            int i14 = 0;
                            while (true) {
                                if (i14 >= constructors.length) {
                                    StringBuffer stringBuffer2 = new StringBuffer();
                                    stringBuffer2.append(strE);
                                    stringBuffer2.append(" does not define a public constructor");
                                    stringBuffer2.append(" that takes in a Reader as its ");
                                    stringBuffer2.append("single argument.");
                                    throw new BuildException(stringBuffer2.toString());
                                }
                                Class<?>[] parameterTypes = constructors[i14].getParameterTypes();
                                if (parameterTypes.length == 1) {
                                    Class<?> cls2 = parameterTypes[0];
                                    Class<?> clsA2 = f75964f;
                                    if (clsA2 == null) {
                                        clsA2 = a("java.io.Reader");
                                        f75964f = clsA2;
                                    }
                                    if (cls2.isAssignableFrom(clsA2)) {
                                        reader = (Reader) constructors[i14].newInstance(reader);
                                        f(reader);
                                        Class clsA3 = f75965g;
                                        if (clsA3 == null) {
                                            clsA3 = a("org.apache.tools.ant.types.Parameterizable");
                                            f75965g = clsA3;
                                        }
                                        if (!clsA3.isAssignableFrom(cls)) {
                                            break;
                                        }
                                        aVar.g();
                                        c.a(reader);
                                        throw null;
                                    }
                                }
                                i14++;
                            }
                        }
                    }
                }
            }
        }
        return reader;
    }

    public void c(Vector vector) {
        this.f75968c = vector;
    }

    public void d(Reader reader) {
        this.f75966a = reader;
    }

    public void e(Project project) {
        this.f75969d = project;
    }
}
