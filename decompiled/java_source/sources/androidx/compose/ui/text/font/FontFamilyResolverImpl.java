package androidx.compose.ui.text.font;

import androidx.compose.runtime.a3;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class FontFamilyResolverImpl implements h.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u f6102a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w f6103b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TypefaceRequestCache f6104c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final l f6105d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final t f6106e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Function1 f6107f;

    public FontFamilyResolverImpl(u uVar, w wVar, TypefaceRequestCache typefaceRequestCache, l lVar, t tVar) {
        this.f6102a = uVar;
        this.f6103b = wVar;
        this.f6104c = typefaceRequestCache;
        this.f6105d = lVar;
        this.f6106e = tVar;
        this.f6107f = new Function1<d0, Object>() { // from class: androidx.compose.ui.text.font.FontFamilyResolverImpl$createDefaultTypeface$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(d0 d0Var) {
                return this.this$0.g(d0.b(d0Var, null, null, 0, 0, null, 30, null)).getValue();
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ FontFamilyResolverImpl(u uVar, w wVar, TypefaceRequestCache typefaceRequestCache, l lVar, t tVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(uVar, (i11 & 2) != 0 ? w.f6175a.a() : wVar, (i11 & 4) != 0 ? j.b() : typefaceRequestCache, (i11 & 8) != 0 ? new l(j.a(), null, 2, 0 == true ? 1 : 0) : lVar, (i11 & 16) != 0 ? new t() : tVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final a3 g(final d0 d0Var) {
        return this.f6104c.c(d0Var, new Function1<Function1<? super e0, ? extends Unit>, e0>() { // from class: androidx.compose.ui.text.font.FontFamilyResolverImpl$resolve$result$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final e0 invoke(Function1<? super e0, Unit> function1) {
                e0 e0VarA = this.this$0.f6105d.a(d0Var, this.this$0.f(), function1, this.this$0.f6107f);
                if (e0VarA == null && (e0VarA = this.this$0.f6106e.a(d0Var, this.this$0.f(), function1, this.this$0.f6107f)) == null) {
                    throw new IllegalStateException("Could not load font");
                }
                return e0VarA;
            }
        });
    }

    @Override // androidx.compose.ui.text.font.h.b
    public a3 a(h hVar, p pVar, int i11, int i12) {
        return g(new d0(this.f6103b.d(hVar), this.f6103b.a(pVar), this.f6103b.b(i11), this.f6103b.c(i12), this.f6102a.a(), null));
    }

    public final u f() {
        return this.f6102a;
    }
}
