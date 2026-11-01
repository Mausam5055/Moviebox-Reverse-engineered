.class public final Lb4/h;
.super Ljava/lang/Object;

# interfaces
.implements La4/e$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La4/e$b;)La4/e;
    .locals 7

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    iget-object v2, p1, La4/e$b;->a:Landroid/content/Context;

    iget-object v3, p1, La4/e$b;->b:Ljava/lang/String;

    iget-object v4, p1, La4/e$b;->c:La4/e$a;

    iget-boolean v5, p1, La4/e$b;->d:Z

    iget-boolean v6, p1, La4/e$b;->e:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;La4/e$a;ZZ)V

    return-object v0
.end method
