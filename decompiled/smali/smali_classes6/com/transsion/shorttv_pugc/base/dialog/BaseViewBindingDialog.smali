.class public abstract Lcom/transsion/shorttv_pugc/base/dialog/BaseViewBindingDialog;
.super Lcom/transsion/shorttv_pugc/base/dialog/BaseDialog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lg4/a;",
        ">",
        "Lcom/transsion/shorttv_pugc/base/dialog/BaseDialog;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J-\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR$\u0010\u0015\u001a\u0004\u0018\u00018\u00008\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R.\u0010\u001a\u001a\u001c\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00028\u00000\u00168&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/base/dialog/BaseViewBindingDialog;",
        "Lg4/a;",
        "T",
        "Lcom/transsion/shorttv_pugc/base/dialog/BaseDialog;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "b",
        "Lg4/a;",
        "j0",
        "()Lg4/a;",
        "setViewBinding",
        "(Lg4/a;)V",
        "viewBinding",
        "Lkotlin/Function3;",
        "",
        "i0",
        "()Lkotlin/jvm/functions/Function3;",
        "bindingInflater",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private b:Lg4/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/base/dialog/BaseDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract i0()Lkotlin/jvm/functions/Function3;
.end method

.method protected final j0()Lg4/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/base/dialog/BaseViewBindingDialog;->b:Lg4/a;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/dialog/BaseViewBindingDialog;->i0()Lkotlin/jvm/functions/Function3;

    move-result-object p3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg4/a;

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/base/dialog/BaseViewBindingDialog;->b:Lg4/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lg4/a;->getRoot()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
