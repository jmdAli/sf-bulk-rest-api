%dw 2.0
output application/java

---
{
SOQL: p(message.attributes.queryParams.jobType  default "test" ++ ".SOQL")
 
}