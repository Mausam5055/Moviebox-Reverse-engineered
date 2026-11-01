.class Lcom/pgl/ssdk/ces/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgl/ssdk/ces/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pgl/ssdk/ces/b;


# direct methods
.method constructor <init>(Lcom/pgl/ssdk/ces/b;)V
    .locals 0

    iput-object p1, p0, Lcom/pgl/ssdk/ces/b$b;->a:Lcom/pgl/ssdk/ces/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/pgl/ssdk/ces/b$b;->a:Lcom/pgl/ssdk/ces/b;

    iget-object v0, v0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/pgl/ssdk/i0;->a(Landroid/content/Context;)Lcom/pgl/ssdk/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pgl/ssdk/i0;->a()V

    return-void
.end method
