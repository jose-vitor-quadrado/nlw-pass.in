export function generateSlug(text: String) {
  return (
    text
      // brake down the character into its base character and yours diacritics
      .normalize("NFD")
      // remove all diacritical characters(accents)
      .replace(/[\u0300-\u036f]/g, "")
      .toLowerCase()
      // replace all characters that are not letters, spaces or hyphens
      .replace(/[\^\w\s-]/g, "")
      // remove all the blank spaces then replaces with "-"
      .replace(/\s+/g, "-")
  );
}
