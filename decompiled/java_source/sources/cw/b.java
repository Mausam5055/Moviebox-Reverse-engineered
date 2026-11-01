package cw;

import com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b {
    public abstract String a();

    public String b() {
        return "";
    }

    public List c() {
        return new ArrayList();
    }

    public abstract String d();

    public abstract void e(Function1 function1);

    public abstract Object f(Function1 function1, Function1 function2, Continuation continuation);

    public abstract String g();

    public abstract void h(JsonObject jsonObject, Function1 function1);

    public boolean i() {
        return true;
    }
}
