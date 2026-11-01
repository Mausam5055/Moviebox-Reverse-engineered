.class public final synthetic Lcom/transsion/subtitle/helper/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle/helper/j;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle/helper/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subtitle/helper/i;->a:Lcom/transsion/subtitle/helper/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/helper/i;->a:Lcom/transsion/subtitle/helper/j;

    invoke-static {v0}, Lcom/transsion/subtitle/helper/j;->a(Lcom/transsion/subtitle/helper/j;)V

    return-void
.end method
