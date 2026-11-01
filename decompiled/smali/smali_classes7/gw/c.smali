.class public final Lgw/c;
.super Lcom/transsion/baseui/adapter/BaseItemBindingProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgw/c$a;
    }
.end annotation


# static fields
.field public static final h:Lgw/c$a;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgw/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgw/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgw/c;->h:Lgw/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/adapter/BaseItemBindingProvider;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lgw/c;->g:I

    return-void
.end method


# virtual methods
.method public A(Lfw/u0;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljw/a;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "item"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p3, Ljw/a$b;

    if-eqz p2, :cond_0

    check-cast p3, Ljw/a$b;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    iget-object p1, p1, Lfw/u0;->b:Lcom/tn/lib/widget/TnTextView;

    invoke-virtual {p3}, Ljw/a$b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lfw/u0;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lfw/u0;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/u0;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lgw/c;->g:I

    return v0
.end method

.method public bridge synthetic y(Lg4/a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lfw/u0;

    check-cast p3, Ljw/a;

    invoke-virtual {p0, p1, p2, p3}, Lgw/c;->A(Lfw/u0;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljw/a;)V

    return-void
.end method

.method public bridge synthetic z(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lgw/c;->B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lfw/u0;

    move-result-object p1

    return-object p1
.end method
