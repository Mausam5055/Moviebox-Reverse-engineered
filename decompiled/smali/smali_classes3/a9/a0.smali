.class public final synthetic La9/a0;
.super Ljava/lang/Object;

# interfaces
.implements La9/m0$b;


# instance fields
.field public final synthetic a:La9/m0;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lv8/a$a;


# direct methods
.method public synthetic constructor <init>(La9/m0;Ljava/util/Map;Lv8/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La9/a0;->a:La9/m0;

    iput-object p2, p0, La9/a0;->b:Ljava/util/Map;

    iput-object p3, p0, La9/a0;->c:Lv8/a$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, La9/a0;->a:La9/m0;

    iget-object v1, p0, La9/a0;->b:Ljava/util/Map;

    iget-object v2, p0, La9/a0;->c:Lv8/a$a;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, La9/m0;->v(La9/m0;Ljava/util/Map;Lv8/a$a;Landroid/database/Cursor;)Lv8/a;

    move-result-object p1

    return-object p1
.end method
