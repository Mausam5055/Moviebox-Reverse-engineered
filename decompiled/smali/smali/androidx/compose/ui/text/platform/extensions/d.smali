.class public final Landroidx/compose/ui/text/platform/extensions/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/ui/text/platform/extensions/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/platform/extensions/d;

    invoke-direct {v0}, Landroidx/compose/ui/text/platform/extensions/d;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/platform/extensions/d;->a:Landroidx/compose/ui/text/platform/extensions/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ln0/i;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln0/h;

    invoke-virtual {v1}, Ln0/h;->a()Ljava/util/Locale;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/util/Locale;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/Locale;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/Locale;

    invoke-static {p1}, Landroidx/compose/ui/text/platform/extensions/a;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/text/platform/extensions/b;->a(Landroid/os/LocaleList;)Landroid/text/style/LocaleSpan;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroidx/compose/ui/text/platform/AndroidTextPaint;Ln0/i;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln0/h;

    invoke-virtual {v1}, Ln0/h;->a()Ljava/util/Locale;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    new-array p2, p2, [Ljava/util/Locale;

    invoke-interface {v0, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/util/Locale;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/util/Locale;

    invoke-static {p2}, Landroidx/compose/ui/text/platform/extensions/a;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/ui/text/platform/extensions/c;->a(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroid/os/LocaleList;)V

    return-void
.end method
