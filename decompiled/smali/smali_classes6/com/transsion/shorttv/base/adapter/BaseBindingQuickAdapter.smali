.class public abstract Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VB::",
        "Lg4/a;",
        ">",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0003*\u00020\u00022\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u00050\u0004:\u0001#B\u0019\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\u000e\u001a\u00028\u00012\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH&\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00028\u0000H&\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J-\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00028\u00012\u0006\u0010\u0011\u001a\u00028\u00002\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J%\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00052\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ%\u0010\u001f\u001a\u00020\u00122\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00052\u0006\u0010\u0011\u001a\u00028\u0000H\u0014\u00a2\u0006\u0004\u0008\u001f\u0010 J3\u0010!\u001a\u00020\u00122\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00052\u0006\u0010\u0011\u001a\u00028\u00002\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015H\u0014\u00a2\u0006\u0004\u0008!\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter;",
        "T",
        "Lg4/a;",
        "VB",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;",
        "",
        "data",
        "<init>",
        "(Ljava/util/List;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "parent",
        "E1",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lg4/a;",
        "binding",
        "item",
        "",
        "F1",
        "(Lg4/a;Ljava/lang/Object;)V",
        "",
        "",
        "payloads",
        "G1",
        "(Lg4/a;Ljava/lang/Object;Ljava/util/List;)V",
        "",
        "viewType",
        "D1",
        "(Landroid/view/ViewGroup;I)Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;",
        "holder",
        "B1",
        "(Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;Ljava/lang/Object;)V",
        "C1",
        "(Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;Ljava/lang/Object;Ljava/util/List;)V",
        "BindingHolder",
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


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected B1(Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder<",
            "TVB;>;TT;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;->f()Lg4/a;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter;->F1(Lg4/a;Ljava/lang/Object;)V

    return-void
.end method

.method protected C1(Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder<",
            "TVB;>;TT;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;->f()Lg4/a;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter;->G1(Lg4/a;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method protected D1(Landroid/view/ViewGroup;I)Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder<",
            "TVB;>;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter;->E1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lg4/a;

    move-result-object p1

    new-instance p2, Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;

    invoke-direct {p2, p1}, Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;-><init>(Lg4/a;)V

    return-object p2
.end method

.method public abstract E1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            ")TVB;"
        }
    .end annotation
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter;->B1(Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract F1(Lg4/a;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVB;TT;)V"
        }
    .end annotation
.end method

.method public bridge synthetic G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    check-cast p1, Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter;->C1(Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public G1(Lg4/a;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVB;TT;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p2, "binding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "payloads"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic J(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter;->D1(Landroid/view/ViewGroup;I)Lcom/transsion/shorttv/base/adapter/BaseBindingQuickAdapter$BindingHolder;

    move-result-object p1

    return-object p1
.end method
