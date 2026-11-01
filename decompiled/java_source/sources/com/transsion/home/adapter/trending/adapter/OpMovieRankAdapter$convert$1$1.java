package com.transsion.home.adapter.trending.adapter;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.b;
import kotlinx.coroutines.flow.c;
import kotlinx.coroutines.flow.d;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.adapter.trending.adapter.OpMovieRankAdapter$convert$1$1", f = "OpMovieRankAdapter.kt", l = {112}, m = "invokeSuspend")
final class OpMovieRankAdapter$convert$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Subject $item;
    final /* synthetic */ ShapeableImageView $this_apply;
    int label;

    /* JADX INFO: renamed from: com.transsion.home.adapter.trending.adapter.OpMovieRankAdapter$convert$1$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u0010\u0012\f\u0012\n \u0002*\u0004\u0018\u00010\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Landroid/graphics/Bitmap;", "kotlin.jvm.PlatformType", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.home.adapter.trending.adapter.OpMovieRankAdapter$convert$1$1$1", f = "OpMovieRankAdapter.kt", l = {109}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<c, Continuation<? super Unit>, Object> {
        final /* synthetic */ Subject $item;
        final /* synthetic */ ShapeableImageView $this_apply;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Subject subject, ShapeableImageView shapeableImageView, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$item = subject;
            this.$this_apply = shapeableImageView;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$item, this.$this_apply, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(c cVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(cVar, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            String url;
            AssetManager assets;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                c cVar = (c) this.L$0;
                Cover cover = this.$item.getCover();
                if (cover != null && (url = cover.getUrl()) != null) {
                    Context context = this.$this_apply.getContext();
                    InputStream inputStreamOpen = (context == null || (assets = context.getAssets()) == null) ? null : assets.open(url);
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen);
                    this.L$0 = inputStreamOpen;
                    this.label = 1;
                    if (cVar.emit(bitmapDecodeStream, this) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    /* JADX INFO: renamed from: com.transsion.home.adapter.trending.adapter.OpMovieRankAdapter$convert$1$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005*\u0010\u0012\f\u0012\n \u0002*\u0004\u0018\u00010\u00010\u00010\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Lkotlinx/coroutines/flow/c;", "Landroid/graphics/Bitmap;", "kotlin.jvm.PlatformType", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/c;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.home.adapter.trending.adapter.OpMovieRankAdapter$convert$1$1$2", f = "OpMovieRankAdapter.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<c, Throwable, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(c cVar, Throwable th2, Continuation<? super Unit> continuation) {
            return new AnonymousClass2(continuation).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            return Unit.f67061a;
        }
    }

    static final class a implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ShapeableImageView f44668a;

        a(ShapeableImageView shapeableImageView) {
            this.f44668a = shapeableImageView;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(Bitmap bitmap, Continuation continuation) {
            this.f44668a.setImageBitmap(bitmap);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    OpMovieRankAdapter$convert$1$1(Subject subject, ShapeableImageView shapeableImageView, Continuation<? super OpMovieRankAdapter$convert$1$1> continuation) {
        super(2, continuation);
        this.$item = subject;
        this.$this_apply = shapeableImageView;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new OpMovieRankAdapter$convert$1$1(this.$item, this.$this_apply, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((OpMovieRankAdapter$convert$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            b bVarF = d.f(d.u(d.s(new AnonymousClass1(this.$item, this.$this_apply, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.$this_apply);
            this.label = 1;
            if (bVarF.a(aVar, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
