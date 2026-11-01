.class Lkb/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkb/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkb/b;->a(Ljava/lang/String;Lkb/a$b;)Lkb/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Lkb/b;


# direct methods
.method constructor <init>(Lkb/b;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lkb/b$a;->a:Ljava/lang/String;

    iput-object p1, p0, Lkb/b$a;->b:Lkb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
