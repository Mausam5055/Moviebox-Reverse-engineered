.class public final synthetic Lcom/transsion/publish/ui/l0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/publish/ui/SelectImageActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/publish/ui/SelectImageActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/ui/l0;->a:Lcom/transsion/publish/ui/SelectImageActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/ui/l0;->a:Lcom/transsion/publish/ui/SelectImageActivity;

    check-cast p1, Lcom/transsion/publish/bean/BigImageBean;

    invoke-static {v0, p1}, Lcom/transsion/publish/ui/SelectImageActivity;->k0(Lcom/transsion/publish/ui/SelectImageActivity;Lcom/transsion/publish/bean/BigImageBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
