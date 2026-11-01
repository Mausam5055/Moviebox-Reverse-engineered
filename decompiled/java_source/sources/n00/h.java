package n00;

import com.google.gson.Gson;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f70077a;

    public h(ArrayList arrayList) {
        this.f70077a = arrayList;
    }

    public i a() {
        return f.a(l.d().a(), new Gson().toJson(this.f70077a), 0);
    }
}
