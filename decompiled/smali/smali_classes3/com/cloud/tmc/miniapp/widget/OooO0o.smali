.class public final Lcom/cloud/tmc/miniapp/widget/OooO0o;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/drawable/Drawable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/widget/OooO0OO;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/cloud/tmc/miniapp/widget/OooO0OO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/cloud/tmc/miniapp/widget/OooO0OO;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0o;->OooO00o:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0o;->OooO00o:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->setUnreadIconVisible(Z)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0o;->OooO00o:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
