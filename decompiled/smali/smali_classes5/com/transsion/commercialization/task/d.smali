.class public final synthetic Lcom/transsion/commercialization/task/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/commercialization/task/AdInterceptDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/commercialization/task/AdInterceptDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/commercialization/task/d;->a:Lcom/transsion/commercialization/task/AdInterceptDialog;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/commercialization/task/d;->a:Lcom/transsion/commercialization/task/AdInterceptDialog;

    invoke-static {v0}, Lcom/transsion/commercialization/task/AdInterceptDialog;->o0(Lcom/transsion/commercialization/task/AdInterceptDialog;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
