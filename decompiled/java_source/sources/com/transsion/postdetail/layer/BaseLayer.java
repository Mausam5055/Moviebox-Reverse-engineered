package com.transsion.postdetail.layer;

import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.m;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.player.orplayer.g;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.layer.listener.LayerFlag;
import com.transsion.postdetail.viewmodel.PostDetailViewModel;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes6.dex */
public abstract class BaseLayer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f48879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private g f48880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f48881c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PostSubjectItem f48882d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f48883e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ORPlayerView f48884f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageView f48885g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private a f48886h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f48887i;

    public BaseLayer(final Fragment fragment) {
        Intrinsics.h(fragment, "fragment");
        this.f48879a = getClass().getSimpleName();
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.postdetail.layer.BaseLayer$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return fragment;
            }
        };
        this.f48883e = FragmentViewModelLazyKt.a(fragment, Reflection.b(PostDetailViewModel.class), new Function0<x0>() { // from class: com.transsion.postdetail.layer.BaseLayer$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.postdetail.layer.BaseLayer$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                Object objInvoke = function0.invoke();
                m mVar = objInvoke instanceof m ? (m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = fragment.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
    }

    public final void F(LayerFlag flag, Object... params) {
        Intrinsics.h(flag, "flag");
        Intrinsics.h(params, "params");
        a aVar = this.f48886h;
        if (aVar != null) {
            aVar.h(flag, Arrays.copyOf(params, params.length));
        }
    }

    protected final ImageView G() {
        return this.f48885g;
    }

    protected final g H() {
        return this.f48880b;
    }

    protected final ORPlayerView I() {
        return this.f48884f;
    }

    protected final boolean J() {
        return this.f48887i;
    }

    protected final void K(ImageView imageView) {
        this.f48885g = imageView;
    }

    public final void L(a aVar) {
        this.f48886h = aVar;
    }

    public void M(g orPlayer, ORPlayerView orPlayerView) {
        Intrinsics.h(orPlayer, "orPlayer");
        Intrinsics.h(orPlayerView, "orPlayerView");
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.f48879a;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "setPlayer----->", false, 4, null);
        this.f48880b = orPlayer;
        this.f48884f = orPlayerView;
    }

    public final void N(String postId, PostSubjectItem postSubjectItem) {
        Intrinsics.h(postId, "postId");
        lg.a.C0828a c0828a = lg.a.f68839a;
        String TAG = this.f48879a;
        Intrinsics.g(TAG, "TAG");
        lg.a.C0828a.f(c0828a, TAG, "setPostData----->", false, 4, null);
        this.f48881c = postId;
        this.f48882d = postSubjectItem;
    }

    protected final void O(String str) {
        this.f48881c = str;
    }

    protected final void P(boolean z10) {
        this.f48887i = z10;
    }
}
