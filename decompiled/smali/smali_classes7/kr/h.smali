.class public final synthetic Lkr/h;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/share/share/ShareDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/share/share/ShareDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkr/h;->a:Lcom/transsion/share/share/ShareDialogFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkr/h;->a:Lcom/transsion/share/share/ShareDialogFragment;

    check-cast p1, Lcom/transsion/share/bean/ShareBean;

    invoke-static {v0, p1}, Lcom/transsion/share/share/ShareDialogFragment;->Y(Lcom/transsion/share/share/ShareDialogFragment;Lcom/transsion/share/bean/ShareBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
