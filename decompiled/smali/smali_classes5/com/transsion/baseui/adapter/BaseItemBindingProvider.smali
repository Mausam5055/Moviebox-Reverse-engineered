.class public abstract Lcom/transsion/baseui/adapter/BaseItemBindingProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baseui/adapter/BaseItemBindingProvider$BindingViewHolder;
    }
.end annotation


# static fields
.field public static final f:I = 0x8


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/transsion/baseui/adapter/BaseItemBindingProvider$BindingViewHolder;

    invoke-virtual {v0}, Lcom/transsion/baseui/adapter/BaseItemBindingProvider$BindingViewHolder;->f()Lg4/a;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/baseui/adapter/BaseItemBindingProvider;->y(Lg4/a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lcom/transsion/baseui/adapter/BaseItemBindingProvider;->e:I

    return v0
.end method

.method public r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lcom/transsion/baseui/adapter/BaseItemBindingProvider;->z(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lg4/a;

    move-result-object p1

    new-instance p2, Lcom/transsion/baseui/adapter/BaseItemBindingProvider$BindingViewHolder;

    invoke-direct {p2, p1}, Lcom/transsion/baseui/adapter/BaseItemBindingProvider$BindingViewHolder;-><init>(Lg4/a;)V

    return-object p2
.end method

.method public abstract y(Lg4/a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
.end method

.method public abstract z(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lg4/a;
.end method
