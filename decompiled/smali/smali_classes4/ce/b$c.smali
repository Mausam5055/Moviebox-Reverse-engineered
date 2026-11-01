.class public Lce/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lce/b;->stopTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lce/b;


# direct methods
.method public constructor <init>(Lce/b;)V
    .locals 0

    iput-object p1, p0, Lce/b$c;->a:Lce/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 1

    iget-object v0, p0, Lce/b$c;->a:Lce/b;

    invoke-static {v0}, Lce/b;->b(Lce/b;)V

    return-void
.end method
