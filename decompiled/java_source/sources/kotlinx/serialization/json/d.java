package kotlinx.serialization.json;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f68242a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f68243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f68244c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f68245d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f68246e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f68247f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f68248g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f68249h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f68250i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f68251j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f68252k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f68253l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private f00.c f68254m;

    public d(a json) {
        Intrinsics.h(json, "json");
        this.f68242a = json.e().e();
        this.f68243b = json.e().f();
        this.f68244c = json.e().g();
        this.f68245d = json.e().l();
        this.f68246e = json.e().b();
        this.f68247f = json.e().h();
        this.f68248g = json.e().i();
        this.f68249h = json.e().d();
        this.f68250i = json.e().k();
        this.f68251j = json.e().c();
        this.f68252k = json.e().a();
        this.f68253l = json.e().j();
        this.f68254m = json.a();
    }

    public final f a() {
        if (this.f68250i && !Intrinsics.c(this.f68251j, NativeComponentConstants.KEY_COMPONENT_TYPE)) {
            throw new IllegalArgumentException("Class discriminator should not be specified when array polymorphism is specified");
        }
        if (this.f68247f) {
            if (!Intrinsics.c(this.f68248g, "    ")) {
                String str = this.f68248g;
                for (int i11 = 0; i11 < str.length(); i11++) {
                    char cCharAt = str.charAt(i11);
                    if (cCharAt != ' ' && cCharAt != '\t' && cCharAt != '\r' && cCharAt != '\n') {
                        throw new IllegalArgumentException(("Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had " + this.f68248g).toString());
                    }
                }
            }
        } else if (!Intrinsics.c(this.f68248g, "    ")) {
            throw new IllegalArgumentException("Indent should not be specified when default printing mode is used");
        }
        return new f(this.f68242a, this.f68244c, this.f68245d, this.f68246e, this.f68247f, this.f68243b, this.f68248g, this.f68249h, this.f68250i, this.f68251j, this.f68252k, this.f68253l);
    }

    public final f00.c b() {
        return this.f68254m;
    }

    public final void c(boolean z10) {
        this.f68246e = z10;
    }

    public final void d(boolean z10) {
        this.f68242a = z10;
    }

    public final void e(boolean z10) {
        this.f68243b = z10;
    }

    public final void f(boolean z10) {
        this.f68244c = z10;
    }
}
