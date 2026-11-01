.class public final synthetic Lwo/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/myactivity/MyActivityFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/myactivity/MyActivityFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwo/c;->a:Lcom/transsion/postdetail/myactivity/MyActivityFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lwo/c;->a:Lcom/transsion/postdetail/myactivity/MyActivityFragment;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/transsion/postdetail/myactivity/MyActivityFragment;->b0(Lcom/transsion/postdetail/myactivity/MyActivityFragment;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
