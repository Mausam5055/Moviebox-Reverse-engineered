.class public interface abstract Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createView(Landroid/content/Context;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract getGravity()I
.end method

.method public abstract getHorizontalMargin()F
.end method

.method public abstract getToastType()Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;
.end method

.method public abstract getVerticalMargin()F
.end method

.method public abstract getXOffset()I
.end method

.method public abstract getYOffset()I
.end method
