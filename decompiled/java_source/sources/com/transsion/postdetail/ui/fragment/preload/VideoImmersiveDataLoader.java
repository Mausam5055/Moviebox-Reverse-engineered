package com.transsion.postdetail.ui.fragment.preload;

import androidx.p009lifecycle.b0;
import com.transsion.postdetail.viewmodel.ImmVideoRequestEntity;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class VideoImmersiveDataLoader extends qm.b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ImmVideoRequestEntity f49788f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f49789g;

    /* JADX WARN: Multi-variable type inference failed */
    public VideoImmersiveDataLoader() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public VideoImmersiveDataLoader(ImmVideoRequestEntity immVideoRequestEntity) {
        this.f49788f = immVideoRequestEntity;
        this.f49789g = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.fragment.preload.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return VideoImmersiveDataLoader.o();
            }
        });
    }

    public /* synthetic */ VideoImmersiveDataLoader(ImmVideoRequestEntity immVideoRequestEntity, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : immVideoRequestEntity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final xo.b n() {
        return (xo.b) this.f49789g.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xo.b o() {
        return (xo.b) zg.c.f79414e.a().h(xo.b.class);
    }

    @Override // qm.b
    public void h(b0 b0Var) {
        j(k.d(o0.a(y0.b()), null, null, new VideoImmersiveDataLoader$loadDataFromService$1(this, null), 3, null));
    }

    public final ImmVideoRequestEntity m() {
        return this.f49788f;
    }
}
