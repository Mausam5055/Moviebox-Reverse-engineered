.class public interface abstract Landroidx/work/w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/w$b;
    }
.end annotation


# static fields
.field public static final a:Landroidx/work/w$b$c;

.field public static final b:Landroidx/work/w$b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/w$b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/w$b$c;-><init>(Landroidx/work/w$a;)V

    sput-object v0, Landroidx/work/w;->a:Landroidx/work/w$b$c;

    new-instance v0, Landroidx/work/w$b$b;

    invoke-direct {v0, v1}, Landroidx/work/w$b$b;-><init>(Landroidx/work/w$a;)V

    sput-object v0, Landroidx/work/w;->b:Landroidx/work/w$b$b;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/common/util/concurrent/r;
.end method
