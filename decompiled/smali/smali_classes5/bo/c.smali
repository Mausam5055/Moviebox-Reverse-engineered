.class public final Lbo/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lbo/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbo/c;

    invoke-direct {v0}, Lbo/c;-><init>()V

    sput-object v0, Lbo/c;->a:Lbo/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lhj/i;->a:Lhj/i;

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lhj/i;->i()Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v1, Lkotlin/Pair;

    const-string v2, "module_name"

    const-string v3, "play_screen"

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    const-string v3, "subject_id"

    invoke-direct {v2, v3, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, Lkotlin/Pair;

    const-string v3, "ops"

    invoke-direct {p2, v3, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p3, Lkotlin/Pair;

    if-eqz p4, :cond_2

    const-string p4, "1"

    goto :goto_0

    :cond_2
    const-string p4, "0"

    :goto_0
    const-string v3, "type"

    invoke-direct {p3, v3, p4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p4, 0x4

    new-array p4, p4, [Lkotlin/Pair;

    const/4 v3, 0x0

    aput-object v1, p4, v3

    const/4 v1, 0x1

    aput-object v2, p4, v1

    const/4 v1, 0x2

    aput-object p2, p4, v1

    const/4 p2, 0x3

    aput-object p3, p4, p2

    invoke-static {p4}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    :goto_1
    return-void
.end method
