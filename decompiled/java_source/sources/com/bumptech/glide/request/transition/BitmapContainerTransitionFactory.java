package com.bumptech.glide.request.transition;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.DataSource;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BitmapContainerTransitionFactory<R> implements TransitionFactory<R> {
    private final TransitionFactory<Drawable> realFactory;

    private final class BitmapGlideAnimation implements Transition<R> {
        private final Transition<Drawable> transition;

        BitmapGlideAnimation(Transition<Drawable> transition) {
            this.transition = transition;
        }

        @Override // com.bumptech.glide.request.transition.Transition
        public boolean transition(R r11, Transition.ViewAdapter viewAdapter) {
            return this.transition.transition(new BitmapDrawable(viewAdapter.getView().getResources(), BitmapContainerTransitionFactory.this.getBitmap(r11)), viewAdapter);
        }
    }

    public BitmapContainerTransitionFactory(TransitionFactory<Drawable> transitionFactory) {
        this.realFactory = transitionFactory;
    }

    @Override // com.bumptech.glide.request.transition.TransitionFactory
    public Transition<R> build(DataSource dataSource, boolean z10) {
        return new BitmapGlideAnimation(this.realFactory.build(dataSource, z10));
    }

    protected abstract Bitmap getBitmap(R r11);
}
