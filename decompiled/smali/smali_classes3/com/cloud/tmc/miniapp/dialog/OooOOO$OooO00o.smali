.class public final Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;
.super Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/dialog/OooOOO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter<",
        "Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;",
        ">.NormalViewHolder;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Lkotlin/Lazy;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public final synthetic OooO0o0:Lcom/cloud/tmc/miniapp/dialog/OooOOO;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->mini_item_bottom_dialog:I

    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;-><init>(Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;I)V

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o$OooO00o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO00o:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o$OooO0o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO0O0:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o$OooO0O0;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO0OO:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o$OooO0OO;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO0Oo:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public onBindView(I)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO0o0:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO00o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getDotBadge()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO$OooO00o;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toInvisible(Landroid/view/View;)V

    :cond_6
    :goto_2
    return-void
.end method
