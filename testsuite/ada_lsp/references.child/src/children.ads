with Parents; use Parents;
package Children is

   type Child is new Parent with null Record;

   procedure Primitive (Self : in out Child;
                        Id   : Integer);

end Children;
