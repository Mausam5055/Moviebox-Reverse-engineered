.class public final synthetic Lcom/transsion/al/ka/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/al/ka/AppLockJobService;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/al/ka/AppLockJobService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/al/ka/a;->a:Lcom/transsion/al/ka/AppLockJobService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/al/ka/a;->a:Lcom/transsion/al/ka/AppLockJobService;

    invoke-static {v0}, Lcom/transsion/al/ka/AppLockJobService;->b(Lcom/transsion/al/ka/AppLockJobService;)V

    return-void
.end method
