package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.TransitionOptions;
import com.bumptech.glide.request.transition.DrawableCrossFadeFactory;
import com.bumptech.glide.request.transition.TransitionFactory;

/* JADX INFO: loaded from: classes2.dex */
public final class DrawableTransitionOptions extends TransitionOptions<DrawableTransitionOptions, Drawable> {
    @NonNull
    public static DrawableTransitionOptions with(@NonNull TransitionFactory<Drawable> transitionFactory) {
        return new DrawableTransitionOptions().transition(transitionFactory);
    }

    @NonNull
    public static DrawableTransitionOptions withCrossFade() {
        return new DrawableTransitionOptions().crossFade();
    }

    @NonNull
    public static DrawableTransitionOptions withCrossFade(int i11) {
        return new DrawableTransitionOptions().crossFade(i11);
    }

    @NonNull
    public static DrawableTransitionOptions withCrossFade(@NonNull DrawableCrossFadeFactory.Builder builder) {
        return new DrawableTransitionOptions().crossFade(builder);
    }

    @NonNull
    public static DrawableTransitionOptions withCrossFade(@NonNull DrawableCrossFadeFactory drawableCrossFadeFactory) {
        return new DrawableTransitionOptions().crossFade(drawableCrossFadeFactory);
    }

    @NonNull
    public DrawableTransitionOptions crossFade() {
        return crossFade(new DrawableCrossFadeFactory.Builder());
    }

    @NonNull
    public DrawableTransitionOptions crossFade(int i11) {
        return crossFade(new DrawableCrossFadeFactory.Builder(i11));
    }

    @NonNull
    public DrawableTransitionOptions crossFade(@NonNull DrawableCrossFadeFactory.Builder builder) {
        return crossFade(builder.build());
    }

    @NonNull
    public DrawableTransitionOptions crossFade(@NonNull DrawableCrossFadeFactory drawableCrossFadeFactory) {
        return transition(drawableCrossFadeFactory);
    }

    @Override // com.bumptech.glide.TransitionOptions
    public boolean equals(Object obj) {
        return (obj instanceof DrawableTransitionOptions) && super.equals(obj);
    }

    @Override // com.bumptech.glide.TransitionOptions
    public int hashCode() {
        return super.hashCode();
    }
}
