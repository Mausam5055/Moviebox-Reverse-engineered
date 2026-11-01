package ve;

import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final HashSet f77270c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final JSONObject f77271d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final long f77272e;

    public a(b.InterfaceC0947b interfaceC0947b, HashSet hashSet, JSONObject jSONObject, long j11) {
        super(interfaceC0947b);
        this.f77270c = new HashSet(hashSet);
        this.f77271d = jSONObject;
        this.f77272e = j11;
    }
}
