.class public final synthetic Lfh/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lfh/i;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lfh/i;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfh/d;->a:Lfh/i;

    iput-object p2, p0, Lfh/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lfh/d;->a:Lfh/i;

    iget-object v1, p0, Lfh/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lfh/i;->h(Lfh/i;Ljava/lang/String;)V

    return-void
.end method
