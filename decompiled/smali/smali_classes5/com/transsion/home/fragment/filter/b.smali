.class public final synthetic Lcom/transsion/home/fragment/filter/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/filter/FilterFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/filter/FilterFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/filter/b;->a:Lcom/transsion/home/fragment/filter/FilterFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/filter/b;->a:Lcom/transsion/home/fragment/filter/FilterFragment;

    invoke-static {v0}, Lcom/transsion/home/fragment/filter/FilterFragment;->u0(Lcom/transsion/home/fragment/filter/FilterFragment;)V

    return-void
.end method
