package je;

import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a extends b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final HashSet f65999c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final JSONObject f66000d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final long f66001e;

    public a(b.InterfaceC0800b interfaceC0800b, HashSet hashSet, JSONObject jSONObject, long j11) {
        super(interfaceC0800b);
        this.f65999c = new HashSet(hashSet);
        this.f66000d = jSONObject;
        this.f66001e = j11;
    }
}
