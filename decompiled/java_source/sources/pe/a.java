package pe;

import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final HashSet f72437c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final JSONObject f72438d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final long f72439e;

    public a(b.InterfaceC0883b interfaceC0883b, HashSet hashSet, JSONObject jSONObject, long j11) {
        super(interfaceC0883b);
        this.f72437c = new HashSet(hashSet);
        this.f72438d = jSONObject;
        this.f72439e = j11;
    }
}
