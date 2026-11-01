package com.airbnb.lottie;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class LottieAnimationView extends AppCompatImageView {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f17642q = "LottieAnimationView";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final m0 f17643r = new m0() { // from class: com.airbnb.lottie.f
        @Override // com.airbnb.lottie.m0
        public final void onResult(Object obj) {
            LottieAnimationView.n((Throwable) obj);
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m0 f17644d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final m0 f17645e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private m0 f17646f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f17647g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final LottieDrawable f17648h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f17649i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f17650j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f17651k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f17652l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f17653m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Set f17654n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Set f17655o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private LottieTask f17656p;

    private static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f17657a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f17658b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f17659c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f17660d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        String f17661e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f17662f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f17663g;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i11) {
                return new SavedState[i11];
            }
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f17657a = parcel.readString();
            this.f17659c = parcel.readFloat();
            this.f17660d = parcel.readInt() == 1;
            this.f17661e = parcel.readString();
            this.f17662f = parcel.readInt();
            this.f17663g = parcel.readInt();
        }

        /* synthetic */ SavedState(Parcel parcel, a aVar) {
            this(parcel);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            super.writeToParcel(parcel, i11);
            parcel.writeString(this.f17657a);
            parcel.writeFloat(this.f17659c);
            parcel.writeInt(this.f17660d ? 1 : 0);
            parcel.writeString(this.f17661e);
            parcel.writeInt(this.f17662f);
            parcel.writeInt(this.f17663g);
        }
    }

    private enum UserActionTaken {
        SET_ANIMATION,
        SET_PROGRESS,
        SET_REPEAT_MODE,
        SET_REPEAT_COUNT,
        SET_IMAGE_ASSETS,
        PLAY_OPTION
    }

    class a extends w4.c {
        a(w4.e eVar) {
        }

        @Override // w4.c
        public Object a(w4.b bVar) {
            throw null;
        }
    }

    private static class b implements m0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference f17665a;

        public b(LottieAnimationView lottieAnimationView) {
            this.f17665a = new WeakReference(lottieAnimationView);
        }

        @Override // com.airbnb.lottie.m0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onResult(Throwable th2) {
            LottieAnimationView lottieAnimationView = (LottieAnimationView) this.f17665a.get();
            if (lottieAnimationView == null) {
                return;
            }
            if (lottieAnimationView.f17647g != 0) {
                lottieAnimationView.setImageResource(lottieAnimationView.f17647g);
            }
            (lottieAnimationView.f17646f == null ? LottieAnimationView.f17643r : lottieAnimationView.f17646f).onResult(th2);
        }
    }

    private static class c implements m0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference f17666a;

        public c(LottieAnimationView lottieAnimationView) {
            this.f17666a = new WeakReference(lottieAnimationView);
        }

        @Override // com.airbnb.lottie.m0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onResult(h hVar) {
            LottieAnimationView lottieAnimationView = (LottieAnimationView) this.f17666a.get();
            if (lottieAnimationView == null) {
                return;
            }
            lottieAnimationView.setComposition(hVar);
        }
    }

    public LottieAnimationView(Context context) {
        super(context);
        this.f17644d = new c(this);
        this.f17645e = new b(this);
        this.f17647g = 0;
        this.f17648h = new LottieDrawable();
        this.f17651k = false;
        this.f17652l = false;
        this.f17653m = true;
        this.f17654n = new HashSet();
        this.f17655o = new HashSet();
        k(null, R$attr.lottieAnimationViewStyle);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17644d = new c(this);
        this.f17645e = new b(this);
        this.f17647g = 0;
        this.f17648h = new LottieDrawable();
        this.f17651k = false;
        this.f17652l = false;
        this.f17653m = true;
        this.f17654n = new HashSet();
        this.f17655o = new HashSet();
        k(attributeSet, R$attr.lottieAnimationViewStyle);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f17644d = new c(this);
        this.f17645e = new b(this);
        this.f17647g = 0;
        this.f17648h = new LottieDrawable();
        this.f17651k = false;
        this.f17652l = false;
        this.f17653m = true;
        this.f17654n = new HashSet();
        this.f17655o = new HashSet();
        k(attributeSet, i11);
    }

    private void g() {
        LottieTask lottieTask = this.f17656p;
        if (lottieTask != null) {
            lottieTask.k(this.f17644d);
            this.f17656p.j(this.f17645e);
        }
    }

    private void h() {
        this.f17648h.z();
    }

    private LottieTask i(final String str) {
        if (isInEditMode()) {
            return new LottieTask(new Callable() { // from class: com.airbnb.lottie.e
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f17722a.l(str);
                }
            }, true);
        }
        return this.f17653m ? r.l(getContext(), str) : r.m(getContext(), str, null);
    }

    private LottieTask j(final int i11) {
        if (isInEditMode()) {
            return new LottieTask(new Callable() { // from class: com.airbnb.lottie.g
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f17727a.m(i11);
                }
            }, true);
        }
        return this.f17653m ? r.u(getContext(), i11) : r.v(getContext(), i11, null);
    }

    private void k(AttributeSet attributeSet, int i11) {
        String string;
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.LottieAnimationView, i11, 0);
        this.f17653m = typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_cacheComposition, true);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_rawRes);
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_fileName);
        boolean zHasValue3 = typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_url);
        if (zHasValue && zHasValue2) {
            throw new IllegalArgumentException("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
        }
        if (zHasValue) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.LottieAnimationView_lottie_rawRes, 0);
            if (resourceId != 0) {
                setAnimation(resourceId);
            }
        } else if (zHasValue2) {
            String string2 = typedArrayObtainStyledAttributes.getString(R$styleable.LottieAnimationView_lottie_fileName);
            if (string2 != null) {
                setAnimation(string2);
            }
        } else if (zHasValue3 && (string = typedArrayObtainStyledAttributes.getString(R$styleable.LottieAnimationView_lottie_url)) != null) {
            setAnimationFromUrl(string);
        }
        setFallbackResource(typedArrayObtainStyledAttributes.getResourceId(R$styleable.LottieAnimationView_lottie_fallbackRes, 0));
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_autoPlay, false)) {
            this.f17652l = true;
        }
        if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_loop, false)) {
            this.f17648h.t1(-1);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_repeatMode)) {
            setRepeatMode(typedArrayObtainStyledAttributes.getInt(R$styleable.LottieAnimationView_lottie_repeatMode, 1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_repeatCount)) {
            setRepeatCount(typedArrayObtainStyledAttributes.getInt(R$styleable.LottieAnimationView_lottie_repeatCount, -1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_speed)) {
            setSpeed(typedArrayObtainStyledAttributes.getFloat(R$styleable.LottieAnimationView_lottie_speed, 1.0f));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_clipToCompositionBounds)) {
            setClipToCompositionBounds(typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_clipToCompositionBounds, true));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_clipTextToBoundingBox)) {
            setClipTextToBoundingBox(typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_clipTextToBoundingBox, false));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_defaultFontFileExtension)) {
            setDefaultFontFileExtension(typedArrayObtainStyledAttributes.getString(R$styleable.LottieAnimationView_lottie_defaultFontFileExtension));
        }
        setImageAssetsFolder(typedArrayObtainStyledAttributes.getString(R$styleable.LottieAnimationView_lottie_imageAssetsFolder));
        p(typedArrayObtainStyledAttributes.getFloat(R$styleable.LottieAnimationView_lottie_progress, 0.0f), typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_progress));
        enableMergePathsForKitKatAndAbove(typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove, false));
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_colorFilter)) {
            addValueCallback(new p4.d("**"), p0.K, new w4.c(new s0(g.a.a(getContext(), typedArrayObtainStyledAttributes.getResourceId(R$styleable.LottieAnimationView_lottie_colorFilter, -1)).getDefaultColor())));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_renderMode)) {
            int i12 = R$styleable.LottieAnimationView_lottie_renderMode;
            RenderMode renderMode = RenderMode.AUTOMATIC;
            int iOrdinal = typedArrayObtainStyledAttributes.getInt(i12, renderMode.ordinal());
            if (iOrdinal >= RenderMode.values().length) {
                iOrdinal = renderMode.ordinal();
            }
            setRenderMode(RenderMode.values()[iOrdinal]);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_asyncUpdates)) {
            int i13 = R$styleable.LottieAnimationView_lottie_asyncUpdates;
            AsyncUpdates asyncUpdates = AsyncUpdates.AUTOMATIC;
            int iOrdinal2 = typedArrayObtainStyledAttributes.getInt(i13, asyncUpdates.ordinal());
            if (iOrdinal2 >= RenderMode.values().length) {
                iOrdinal2 = asyncUpdates.ordinal();
            }
            setAsyncUpdates(AsyncUpdates.values()[iOrdinal2]);
        }
        setIgnoreDisabledSystemAnimations(typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_ignoreDisabledSystemAnimations, false));
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_useCompositionFrameRate)) {
            setUseCompositionFrameRate(typedArrayObtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_useCompositionFrameRate, false));
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f17648h.x1(Boolean.valueOf(v4.l.f(getContext()) != 0.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ q0 l(String str) {
        return this.f17653m ? r.n(getContext(), str) : r.o(getContext(), str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ q0 m(int i11) {
        return this.f17653m ? r.w(getContext(), i11) : r.x(getContext(), i11, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void n(Throwable th2) {
        if (!v4.l.k(th2)) {
            throw new IllegalStateException("Unable to parse composition", th2);
        }
        v4.f.d("Unable to load composition.", th2);
    }

    private void o() {
        boolean zIsAnimating = isAnimating();
        setImageDrawable(null);
        setImageDrawable(this.f17648h);
        if (zIsAnimating) {
            this.f17648h.P0();
        }
    }

    private void p(float f11, boolean z10) {
        if (z10) {
            this.f17654n.add(UserActionTaken.SET_PROGRESS);
        }
        this.f17648h.r1(f11);
    }

    private void setCompositionTask(LottieTask lottieTask) {
        q0 q0VarE = lottieTask.e();
        LottieDrawable lottieDrawable = this.f17648h;
        if (q0VarE != null && lottieDrawable == getDrawable() && lottieDrawable.O() == q0VarE.b()) {
            return;
        }
        this.f17654n.add(UserActionTaken.SET_ANIMATION);
        h();
        g();
        this.f17656p = lottieTask.d(this.f17644d).c(this.f17645e);
    }

    public void addAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.f17648h.s(animatorListener);
    }

    public void addAnimatorPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.f17648h.t(animatorPauseListener);
    }

    public void addAnimatorUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f17648h.u(animatorUpdateListener);
    }

    public boolean addLottieOnCompositionLoadedListener(@NonNull o0 o0Var) {
        h composition = getComposition();
        if (composition != null) {
            o0Var.a(composition);
        }
        return this.f17655o.add(o0Var);
    }

    public <T> void addValueCallback(p4.d dVar, T t11, w4.c cVar) {
        this.f17648h.v(dVar, t11, cVar);
    }

    public <T> void addValueCallback(p4.d dVar, T t11, w4.e eVar) {
        this.f17648h.v(dVar, t11, new a(eVar));
    }

    public void cancelAnimation() {
        this.f17652l = false;
        this.f17654n.add(UserActionTaken.PLAY_OPTION);
        this.f17648h.y();
    }

    public <T> void clearValueCallback(p4.d dVar, T t11) {
        this.f17648h.v(dVar, t11, null);
    }

    @Deprecated
    public void disableExtraScaleModeInFitXY() {
        this.f17648h.D();
    }

    public void enableFeatureFlag(LottieFeatureFlag lottieFeatureFlag, boolean z10) {
        this.f17648h.F(lottieFeatureFlag, z10);
    }

    public void enableMergePathsForKitKatAndAbove(boolean z10) {
        this.f17648h.F(LottieFeatureFlag.MergePathsApi19, z10);
    }

    public AsyncUpdates getAsyncUpdates() {
        return this.f17648h.J();
    }

    public boolean getAsyncUpdatesEnabled() {
        return this.f17648h.K();
    }

    public boolean getClipTextToBoundingBox() {
        return this.f17648h.M();
    }

    public boolean getClipToCompositionBounds() {
        return this.f17648h.N();
    }

    @Nullable
    public h getComposition() {
        Drawable drawable = getDrawable();
        LottieDrawable lottieDrawable = this.f17648h;
        if (drawable == lottieDrawable) {
            return lottieDrawable.O();
        }
        return null;
    }

    public long getDuration() {
        h composition = getComposition();
        if (composition != null) {
            return (long) composition.d();
        }
        return 0L;
    }

    public int getFrame() {
        return this.f17648h.R();
    }

    @Nullable
    public String getImageAssetsFolder() {
        return this.f17648h.T();
    }

    public boolean getMaintainOriginalImageBounds() {
        return this.f17648h.V();
    }

    public float getMaxFrame() {
        return this.f17648h.X();
    }

    public float getMinFrame() {
        return this.f17648h.Y();
    }

    @Nullable
    public PerformanceTracker getPerformanceTracker() {
        return this.f17648h.Z();
    }

    public float getProgress() {
        return this.f17648h.a0();
    }

    public RenderMode getRenderMode() {
        return this.f17648h.b0();
    }

    public int getRepeatCount() {
        return this.f17648h.c0();
    }

    public int getRepeatMode() {
        return this.f17648h.d0();
    }

    public float getSpeed() {
        return this.f17648h.e0();
    }

    public boolean hasMasks() {
        return this.f17648h.h0();
    }

    public boolean hasMatte() {
        return this.f17648h.i0();
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        Drawable drawable = getDrawable();
        if ((drawable instanceof LottieDrawable) && ((LottieDrawable) drawable).b0() == RenderMode.SOFTWARE) {
            this.f17648h.invalidateSelf();
        }
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable drawable2 = getDrawable();
        LottieDrawable lottieDrawable = this.f17648h;
        if (drawable2 == lottieDrawable) {
            super.invalidateDrawable(lottieDrawable);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    public boolean isAnimating() {
        return this.f17648h.k0();
    }

    public boolean isFeatureFlagEnabled(LottieFeatureFlag lottieFeatureFlag) {
        return this.f17648h.n0(lottieFeatureFlag);
    }

    public boolean isMergePathsEnabledForKitKatAndAbove() {
        return this.f17648h.n0(LottieFeatureFlag.MergePathsApi19);
    }

    @Deprecated
    public void loop(boolean z10) {
        this.f17648h.t1(z10 ? -1 : 0);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode() || !this.f17652l) {
            return;
        }
        this.f17648h.H0();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        int i11;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f17649i = savedState.f17657a;
        Set set = this.f17654n;
        UserActionTaken userActionTaken = UserActionTaken.SET_ANIMATION;
        if (!set.contains(userActionTaken) && !TextUtils.isEmpty(this.f17649i)) {
            setAnimation(this.f17649i);
        }
        this.f17650j = savedState.f17658b;
        if (!this.f17654n.contains(userActionTaken) && (i11 = this.f17650j) != 0) {
            setAnimation(i11);
        }
        if (!this.f17654n.contains(UserActionTaken.SET_PROGRESS)) {
            p(savedState.f17659c, false);
        }
        if (!this.f17654n.contains(UserActionTaken.PLAY_OPTION) && savedState.f17660d) {
            playAnimation();
        }
        if (!this.f17654n.contains(UserActionTaken.SET_IMAGE_ASSETS)) {
            setImageAssetsFolder(savedState.f17661e);
        }
        if (!this.f17654n.contains(UserActionTaken.SET_REPEAT_MODE)) {
            setRepeatMode(savedState.f17662f);
        }
        if (this.f17654n.contains(UserActionTaken.SET_REPEAT_COUNT)) {
            return;
        }
        setRepeatCount(savedState.f17663g);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f17657a = this.f17649i;
        savedState.f17658b = this.f17650j;
        savedState.f17659c = this.f17648h.a0();
        savedState.f17660d = this.f17648h.l0();
        savedState.f17661e = this.f17648h.T();
        savedState.f17662f = this.f17648h.d0();
        savedState.f17663g = this.f17648h.c0();
        return savedState;
    }

    public void pauseAnimation() {
        this.f17652l = false;
        this.f17648h.G0();
    }

    public void playAnimation() {
        this.f17654n.add(UserActionTaken.PLAY_OPTION);
        this.f17648h.H0();
    }

    public void removeAllAnimatorListeners() {
        this.f17648h.I0();
    }

    public void removeAllLottieOnCompositionLoadedListener() {
        this.f17655o.clear();
    }

    public void removeAllUpdateListeners() {
        this.f17648h.J0();
    }

    public void removeAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.f17648h.K0(animatorListener);
    }

    public void removeAnimatorPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.f17648h.L0(animatorPauseListener);
    }

    public boolean removeLottieOnCompositionLoadedListener(@NonNull o0 o0Var) {
        return this.f17655o.remove(o0Var);
    }

    public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f17648h.M0(animatorUpdateListener);
    }

    public List<p4.d> resolveKeyPath(p4.d dVar) {
        return this.f17648h.O0(dVar);
    }

    public void resumeAnimation() {
        this.f17654n.add(UserActionTaken.PLAY_OPTION);
        this.f17648h.P0();
    }

    public void reverseAnimationSpeed() {
        this.f17648h.Q0();
    }

    public void setAnimation(int i11) {
        this.f17650j = i11;
        this.f17649i = null;
        setCompositionTask(j(i11));
    }

    public void setAnimation(InputStream inputStream, @Nullable String str) {
        setCompositionTask(r.p(inputStream, str));
    }

    public void setAnimation(String str) {
        this.f17649i = str;
        this.f17650j = 0;
        setCompositionTask(i(str));
    }

    public void setAnimation(ZipInputStream zipInputStream, @Nullable String str) {
        setCompositionTask(r.B(zipInputStream, str));
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        setAnimationFromJson(str, null);
    }

    public void setAnimationFromJson(String str, @Nullable String str2) {
        setAnimation(new ByteArrayInputStream(str.getBytes()), str2);
    }

    public void setAnimationFromUrl(String str) {
        setCompositionTask(this.f17653m ? r.y(getContext(), str) : r.z(getContext(), str, null));
    }

    public void setAnimationFromUrl(String str, @Nullable String str2) {
        setCompositionTask(r.z(getContext(), str, str2));
    }

    public void setApplyingOpacityToLayersEnabled(boolean z10) {
        this.f17648h.S0(z10);
    }

    public void setAsyncUpdates(AsyncUpdates asyncUpdates) {
        this.f17648h.T0(asyncUpdates);
    }

    public void setCacheComposition(boolean z10) {
        this.f17653m = z10;
    }

    public void setClipTextToBoundingBox(boolean z10) {
        this.f17648h.U0(z10);
    }

    public void setClipToCompositionBounds(boolean z10) {
        this.f17648h.V0(z10);
    }

    public void setComposition(@NonNull h hVar) {
        if (d.f17710a) {
            Log.v(f17642q, "Set Composition \n" + hVar);
        }
        this.f17648h.setCallback(this);
        this.f17651k = true;
        boolean zW0 = this.f17648h.W0(hVar);
        if (this.f17652l) {
            this.f17648h.H0();
        }
        this.f17651k = false;
        if (getDrawable() != this.f17648h || zW0) {
            if (!zW0) {
                o();
            }
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator it = this.f17655o.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
        }
    }

    public void setDefaultFontFileExtension(String str) {
        this.f17648h.X0(str);
    }

    public void setFailureListener(@Nullable m0 m0Var) {
        this.f17646f = m0Var;
    }

    public void setFallbackResource(int i11) {
        this.f17647g = i11;
    }

    public void setFontAssetDelegate(com.airbnb.lottie.a aVar) {
        this.f17648h.Y0(aVar);
    }

    public void setFontMap(@Nullable Map<String, Typeface> map) {
        this.f17648h.Z0(map);
    }

    public void setFrame(int i11) {
        this.f17648h.a1(i11);
    }

    public void setIgnoreDisabledSystemAnimations(boolean z10) {
        this.f17648h.b1(z10);
    }

    public void setImageAssetDelegate(com.airbnb.lottie.b bVar) {
        this.f17648h.c1(bVar);
    }

    public void setImageAssetsFolder(String str) {
        this.f17648h.d1(str);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        this.f17650j = 0;
        this.f17649i = null;
        g();
        super.setImageBitmap(bitmap);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.f17650j = 0;
        this.f17649i = null;
        g();
        super.setImageDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i11) {
        this.f17650j = 0;
        this.f17649i = null;
        g();
        super.setImageResource(i11);
    }

    public void setMaintainOriginalImageBounds(boolean z10) {
        this.f17648h.e1(z10);
    }

    public void setMaxFrame(int i11) {
        this.f17648h.f1(i11);
    }

    public void setMaxFrame(String str) {
        this.f17648h.g1(str);
    }

    public void setMaxProgress(float f11) {
        this.f17648h.h1(f11);
    }

    public void setMinAndMaxFrame(int i11, int i12) {
        this.f17648h.i1(i11, i12);
    }

    public void setMinAndMaxFrame(String str) {
        this.f17648h.j1(str);
    }

    public void setMinAndMaxFrame(String str, String str2, boolean z10) {
        this.f17648h.k1(str, str2, z10);
    }

    public void setMinAndMaxProgress(float f11, float f12) {
        this.f17648h.l1(f11, f12);
    }

    public void setMinFrame(int i11) {
        this.f17648h.m1(i11);
    }

    public void setMinFrame(String str) {
        this.f17648h.n1(str);
    }

    public void setMinProgress(float f11) {
        this.f17648h.o1(f11);
    }

    public void setOutlineMasksAndMattes(boolean z10) {
        this.f17648h.p1(z10);
    }

    public void setPerformanceTrackingEnabled(boolean z10) {
        this.f17648h.q1(z10);
    }

    public void setProgress(float f11) {
        p(f11, true);
    }

    public void setRenderMode(RenderMode renderMode) {
        this.f17648h.s1(renderMode);
    }

    public void setRepeatCount(int i11) {
        this.f17654n.add(UserActionTaken.SET_REPEAT_COUNT);
        this.f17648h.t1(i11);
    }

    public void setRepeatMode(int i11) {
        this.f17654n.add(UserActionTaken.SET_REPEAT_MODE);
        this.f17648h.u1(i11);
    }

    public void setSafeMode(boolean z10) {
        this.f17648h.v1(z10);
    }

    public void setSpeed(float f11) {
        this.f17648h.w1(f11);
    }

    public void setTextDelegate(t0 t0Var) {
        this.f17648h.y1(t0Var);
    }

    public void setUseCompositionFrameRate(boolean z10) {
        this.f17648h.z1(z10);
    }

    @Override // android.view.View
    public void unscheduleDrawable(Drawable drawable) {
        LottieDrawable lottieDrawable;
        if (!this.f17651k && drawable == (lottieDrawable = this.f17648h) && lottieDrawable.k0()) {
            pauseAnimation();
        } else if (!this.f17651k && (drawable instanceof LottieDrawable)) {
            LottieDrawable lottieDrawable2 = (LottieDrawable) drawable;
            if (lottieDrawable2.k0()) {
                lottieDrawable2.G0();
            }
        }
        super.unscheduleDrawable(drawable);
    }

    @Nullable
    public Bitmap updateBitmap(String str, @Nullable Bitmap bitmap) {
        return this.f17648h.B1(str, bitmap);
    }
}
