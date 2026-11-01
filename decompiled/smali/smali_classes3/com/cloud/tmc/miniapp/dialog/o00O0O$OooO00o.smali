.class public final Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;
.super Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/dialog/o00O0O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter<",
        "Lcom/cloud/tmc/miniapp/dialog/o00Oo0;",
        ">.NormalViewHolder;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Lkotlin/Lazy;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public final synthetic OooO0o:Lcom/cloud/tmc/miniapp/dialog/o00O0O;

.field public final OooO0o0:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/o00O0O;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/o00O0O;

    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->item_mini_image_album:I

    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;I)V

    sget-object p1, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o$OooO00o;

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;->OooO00o:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o$OooO0O0;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;->OooO0O0:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o$OooO0OO;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;->OooO0OO:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o$OooO0o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;->OooO0Oo:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o$OooO;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o$OooO;-><init>(Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;->OooO0o0:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public onBindView(I)V
    .locals 6

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/o00O0O;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/o00O0O;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;->OooO00o:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "<get-imageLoder>(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;->OooO00o:Ljava/lang/String;

    const/16 v5, 0x8

    invoke-interface {v2, v3, v4, v1, v5}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgRoundCornersCenterCrop(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;->OooO0o0:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;->OooO0Oo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;->OooO0o0:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_color_0affffff:I

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    :goto_2
    return-void
.end method
