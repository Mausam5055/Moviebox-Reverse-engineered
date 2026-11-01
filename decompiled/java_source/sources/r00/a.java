package r00;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.w;

/* JADX INFO: loaded from: classes7.dex */
public class a {
    public static final void a(Object obj) {
        try {
            if (obj instanceof w) {
                ((w) obj).A();
            }
            Method method = obj.getClass().getMethod("execute", null);
            if (method != null) {
                method.invoke(obj, null);
                if (obj instanceof w) {
                    ((w) obj).I(null);
                    return;
                }
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("No public ");
            stringBuffer.append("execute");
            stringBuffer.append("() in ");
            stringBuffer.append(obj.getClass());
            throw new BuildException(stringBuffer.toString());
        } catch (IllegalAccessException e11) {
            throw new BuildException(e11);
        } catch (NoSuchMethodException e12) {
            throw new BuildException(e12);
        } catch (InvocationTargetException e13) {
            Throwable targetException = e13.getTargetException();
            if (!(targetException instanceof BuildException)) {
                throw new BuildException(targetException);
            }
            throw ((BuildException) targetException);
        }
    }
}
