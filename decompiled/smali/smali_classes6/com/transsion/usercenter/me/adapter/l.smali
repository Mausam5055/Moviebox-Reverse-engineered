.class public final synthetic Lcom/transsion/usercenter/me/adapter/l;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/l;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/l;->a:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/transsion/usercenter/me/adapter/n;->y(Landroid/widget/TextView;Ljava/lang/Integer;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
