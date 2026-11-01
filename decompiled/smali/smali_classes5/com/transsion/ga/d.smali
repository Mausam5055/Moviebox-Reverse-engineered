.class public final synthetic Lcom/transsion/ga/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/athena/enatha/athena;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/athena/enatha/athena;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ga/d;->a:Lcom/transsion/athena/enatha/athena;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ga/d;->a:Lcom/transsion/athena/enatha/athena;

    invoke-static {v0}, Lcom/transsion/ga/AthenaAnalytics;->d(Lcom/transsion/athena/enatha/athena;)V

    return-void
.end method
