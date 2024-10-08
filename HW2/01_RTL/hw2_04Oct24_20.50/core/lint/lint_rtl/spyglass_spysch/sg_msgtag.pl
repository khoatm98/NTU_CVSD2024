################################################################################
#This is an internally genertaed by SpyGlass for Message Tagging Support
################################################################################


use spyglass;
use SpyGlass;
use SpyGlass::Objects;
spyRebootMsgTagSupport();

spySetMsgTagCount(389,62);
spyCacheTagValuesFromBatch(["pe_crossprobe_tag"]);
spyParseTextMessageTagFile("./hw2_04Oct24_20.50/core/lint/lint_rtl/spyglass_spysch/sg_msgtag.txt");

if(!defined $::spyInIspy || !$::spyInIspy)
{
    spyDefineReportGroupingOrder("ALL",
(
"BUILTIN"   => [SGTAGTRUE, SGTAGFALSE]
,"TEMPLATE" => "A"
)
);
}
spyMessageTagTestBenchmark(9,"./hw2_04Oct24_20.50/core/lint/lint_rtl/spyglass.vdb");

1;
