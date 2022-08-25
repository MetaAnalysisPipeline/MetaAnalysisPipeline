library(VennDiagram)
library(reshape2)

data <- read.csv("/Users/mark/Projects/meta_analysis/manual_review/test_sheets_scibert/complete_n360_methods.csv")
data = data[data["KR_Resilience"] == 1,]
search_pos_Resilience <- nrow(subset(data, data["search_Resilience"] == 1))
trained_pos_Resilience <- nrow(subset(data, data["trained_reviewers_Resilience"] == 1))
NB_pos_Resilience <- nrow(subset(data, data["NB_Resilience"] == 1))
bert_pos_Resilience <- nrow(subset(data, data["bertResilience"] == 1))
sci_bert_pos_Resilience <- nrow(subset(data, data["sci_bertResilience"] == 1))




draw.quintuple.venn(area1=search_pos_Resilience, area2=trained_pos_Resilience, area3=NB_pos_Resilience, area4=bert_pos_Resilience, area5=sci_bert_pos_Resilience, 
                    n12=nrow(subset(data, data["search_Resilience"] == 1 & data["trained_reviewers_Resilience"] == 1)), 
                    n13=nrow(subset(data, data["search_Resilience"] == 1 & data["NB_Resilience"] == 1)), 
                    n14=nrow(subset(data, data["search_Resilience"] == 1 & data["bertResilience"] == 1)), 
                    n15=nrow(subset(data, data["search_Resilience"] == 1 & data["sci_bertResilience"] == 1)),
                    n23=nrow(subset(data, data["trained_reviewers_Resilience"] == 1 & data["NB_Resilience"] == 1)), 
                    n24=nrow(subset(data, data["trained_reviewers_Resilience"] == 1 & data["bertResilience"] == 1)), 
                    n25=nrow(subset(data, data["trained_reviewers_Resilience"] == 1 & data["sci_bertResilience"] == 1)), 
                    n34=nrow(subset(data, data["NB_Resilience"] == 1 & data["bertResilience"] == 1)), 
                    n35=nrow(subset(data, data["NB_Resilience"] == 1 & data["sci_bertResilience"] == 1)), 
                    n45=nrow(subset(data, data["bertResilience"] == 1 & data["sci_bertResilience"] == 1)), 
                    n123=nrow(subset(data, data["search_Resilience"] == 1 & data["trained_reviewers_Resilience"] == 1 & data["NB_Resilience"] == 1)), 
                    n124=nrow(subset(data, data["search_Resilience"] == 1 & data["trained_reviewers_Resilience"] == 1 & data["bertResilience"] == 1)), 
                    n125=nrow(subset(data, data["search_Resilience"] == 1 & data["trained_reviewers_Resilience"] == 1 & data["sci_bertResilience"] == 1)), 
                    n134=nrow(subset(data, data["search_Resilience"] == 1 & data["NB_Resilience"] == 1 & data["bertResilience"] == 1)),
                    n135=nrow(subset(data, data["search_Resilience"] == 1 & data["NB_Resilience"] == 1 & data["sci_bertResilience"] == 1)), 
                    n145=nrow(subset(data, data["search_Resilience"] == 1 & data["bertResilience"] == 1 & data["sci_bertResilience"] == 1)), 
                    n234=nrow(subset(data, data["trained_reviewers_Resilience"] == 1 & data["NB_Resilience"] == 1 & data["bertResilience"] == 1)), 
                    n235=nrow(subset(data, data["trained_reviewers_Resilience"] == 1 & data["NB_Resilience"] == 1 & data["sci_bertResilience"] == 1)), 
                    n245=nrow(subset(data, data["trained_reviewers_Resilience"] == 1 & data["bertResilience"] == 1 & data["sci_bertResilience"] == 1)), 
                    n345=nrow(subset(data, data["NB_Resilience"] == 1 & data["bertResilience"] == 1 & data["sci_bertResilience"] == 1)), 
                    n1234=nrow(subset(data, data["search_Resilience"] == 1 & data["trained_reviewers_Resilience"] == 1 & data["NB_Resilience"] == 1 & data["bertResilience"] == 1)), 
                    n1235=nrow(subset(data, data["search_Resilience"] == 1 & data["trained_reviewers_Resilience"] == 1 & data["NB_Resilience"] == 1 & data["sci_bertResilience"] == 1)),
                    n1245=nrow(subset(data, data["search_Resilience"] == 1 & data["trained_reviewers_Resilience"] == 1 & data["bertResilience"] == 1 & data["sci_bertResilience"] == 1)), 
                    n1345=nrow(subset(data, data["search_Resilience"] == 1 & data["sci_bertResilience"] == 1 & data["NB_Resilience"] == 1 & data["bertResilience"] == 1)), 
                    n2345=nrow(subset(data, data["trained_reviewers_Resilience"] == 1 & data["sci_bertResilience"] == 1 & data["NB_Resilience"] == 1 & data["bertResilience"] == 1)), 
                    n12345=nrow(subset(data, data["search_Resilience"] == 1 &data["trained_reviewers_Resilience"] == 1 & data["sci_bertResilience"] == 1 & data["NB_Resilience"] == 1 & data["bertResilience"] == 1)), 
                    category = c("Search", "Trained Reviewers", "Naive Bayes", "BERT", "SciBERT"), 
                    fill =  c("green", "grey", "blue", "orange", "yellow"), lty = "blank")